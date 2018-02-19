FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
	python2.7 python-pip libxml2-dev libxslt1-dev python-dev

RUN apt-get update && apt-get install -y \
	ipython ipython-notebook nano python-joblib python-tk python-lxml

RUN mkdir /smartkick

ADD requirements.txt /smartkick/

WORKDIR /smartkick

RUN pip install --upgrade pip \
	&& pip install -r requirements.txt