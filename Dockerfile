# FROM ubuntu:20.04
FROM python:slim-buster
# ENV DEBIAN_FRONTEND noninteractive    # export DEBIAN_FRONTEND="noninteractive"

WORKDIR /app

RUN apt update -y \
    && apt install -y htop nano wget ssh git curl procps lsof grep software-properties-common  

COPY app.py /app/
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
CMD ["python", "/app/app.py"]
