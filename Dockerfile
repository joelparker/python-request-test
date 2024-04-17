# syntax=docker/dockerfile:1
FROM python:3.9-slim

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY *.py .

ENV URL="http://localhost:3000/sleep/random"

CMD [ "python3", "./request.py"]