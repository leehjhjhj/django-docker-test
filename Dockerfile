FROM python:3.9.6

ENV PYTHONUNBUFFERED 1

RUN apt-get -y update && apt-get -y install vim apt-utils && apt-get clean

WORKDIR /code

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

