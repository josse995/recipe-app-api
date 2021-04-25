FROM python:3.7-alpine
MAINTAINER Jose Luis Moreno

#Run in unbuffered mode when run in docker.
#Does not allow python to buffer the output
ENV PYTHONUNBUFFERED 1

#Install all the python dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#Create app folder and set as default folder
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#Create a user for running applications only and switch to the user
#This mitigate security gaps (Running container with root is not good)
RUN adduser -D user
USER user