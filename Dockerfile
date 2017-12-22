FROM python:3.5

ADD . /pgantomizer

WORKDIR /pgantomizer

RUN apt-get update && apt-get install -y postgresql-client

# Quick and dirty :)
# RUN pip install pgantomizer

RUN pip install -r requirements.txt

RUN python3 setup.py install

