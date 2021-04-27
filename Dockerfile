FROM python:3.7-alpine
MAINTAINER Jose Luis Moreno

#Run in unbuffered mode when run in docker.
#Does not allow python to buffer the output
ENV PYTHONUNBUFFERED 1

#Install all the python dependencies
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
  gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt

RUN apk del .tmp-build-deps

#Create app folder and set as default folder
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#Create a user for running applications only and switch to the user
#This mitigate security gaps (Running container with root is not good)
RUN adduser -D user
USER user