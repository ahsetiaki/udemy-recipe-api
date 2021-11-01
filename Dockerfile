FROM python:3
MAINTAINER Ariq Haryo Setiaki

ENV PYTHONBUFFERED=1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /api
WORKDIR /api
COPY ./api /api

RUN useradd admin
USER admin