FROM python:2.7-alpine

ADD . /code

WORKDIR /code

RUN apk update && apk upgrade && \
    apk add --no-cache git

RUN pip install -r requirements.txt

CMD ["python", "alexa-tv.py"]
