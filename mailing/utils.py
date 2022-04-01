from django.conf import settings
from django.core.mail import EmailMultiAlternatives

from mailing.models import Subscriber, Message

def send_email(subject, content, uri):

    subscribers = Subscriber.objects.all()[:1]
    for subscriber in subscribers:
        message = Message.objects.create(recipient=subscriber, text=content)
        uri = '{}/{}/'.format(uri, str(message.pk))
        body = content.replace('{{ uri }}', uri)
        body = body.replace('{{ full_name }}', subscriber.full_name())
        body = body.replace('{{ birthday }}', subscriber.birthday)
        mail = EmailMultiAlternatives(subject=subject, body=body, from_email=settings.EMAIL_HOST_USER, bcc=[subscriber.email])
        mail.content_subtype = "html"
        mail.send()
