# -*- coding: utf-8 -*-
import os

from django.http import HttpResponse
from django.conf import settings
from django.utils import timezone
from datetime import timedelta
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.decorators import api_view
from PIL import Image

from mailing.tasks import send_delay
from mailing.serializers import EmailServiceAPISerializer
from mailing.utils import send_email
from mailing.models import Message, EmailTemplate


class EmailServiceAPI(APIView):
    """
    Принимает POST-запрос содержащий template_id и (опционально) тайминг отложенного запроса в минутах
    """
    def post(self, request):

        serializer = EmailServiceAPISerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        time = serializer.validated_data.get('time')
        template_id = serializer.validated_data['template_id']
        template = EmailTemplate.objects.filter(id=template_id).last()
        if not template:
            return Response(status=status.HTTP_400_BAD_REQUEST) 
        uri = request.build_absolute_uri(("render_image"))
        if time:
            send_delay.apply_async((template.subject, template.content, uri),eta=timezone.now() + timedelta(minutes=time))
        else:
            send_email(template.subject, template.content, uri)

        
        return Response(status=status.HTTP_200_OK)

@api_view()
def render_image(request, pk):
    """
    Должен ловить запрос при подгрузке картинки в email-клиенте и ставить флажок "просмотрен"
    """
    if request.method =='GET':
        image = Image.open(os.path.join(settings.STATIC_ROOT, 'img/pixel.jpeg'))
        response = HttpResponse(content_type="image/png" , status = status.HTTP_200_OK)
        message = Message.objects.get(pk=pk)
        message.opened = True
        message.save()
        image.save(response, "JPEG")
        return response