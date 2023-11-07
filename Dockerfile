FROM python:3.12

WORKDIR /var/www/html

SHELL ["/bin/bash", "-c"]

RUN useradd -m pyuser

RUN pip install --upgrade pip
RUN pip install fastapi uvicorn
