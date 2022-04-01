from rest_framework import serializers

class EmailServiceAPISerializer(serializers.Serializer):

    template_id = serializers.IntegerField(help_text='html-template id')
    time = serializers.IntegerField(help_text='timing',required=False)
