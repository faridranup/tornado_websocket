FROM ubuntu

MAINTAINER faridranup <franupratama@gmail.com>

RUN apt-get update -y && apt-get install git python python-pip -y
RUN cd /tmp \
    && git clone https://github.com/faridranup/tornado_websocket.git \
    && cd tornado_websocket\
    && pip install -r requirements.txt

EXPOSE 8888

CMD ["python", "/tmp/tornado_websocket/app.py"]
