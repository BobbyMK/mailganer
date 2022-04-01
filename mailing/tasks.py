from mailing.utils import send_email
from mailganer.celery import app

@app.task
def send_delay(subject, content, uri):
    send_email(subject, content, uri) 
