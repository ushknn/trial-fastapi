#dockerイメージを指定。
FROM python:3.12
RUN apt-get -y update && apt-get -y upgrade
#コンテナ内での作業ディレクトリを指定。
WORKDIR fastapi

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN useradd -m pyuser
USER pyuser