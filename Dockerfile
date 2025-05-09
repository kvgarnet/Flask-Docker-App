# syntax=docker/dockerfile:1

#FROM python:3.9.2
FROM python:3.8-slim-buster

# WORKDIR python-docker
WORKDIR myapp2

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
