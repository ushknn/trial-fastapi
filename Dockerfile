FROM python:3.9

WORKDIR /var/www/html

SHELL ["/bin/bash", "-c"]

RUN pip install fastapi uvicorn
