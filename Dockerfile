FROM python:3.9.6

ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y vim apt-utils \
    && apt-get clean

RUN mkdir /code
ADD . /code

WORKDIR /code

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
