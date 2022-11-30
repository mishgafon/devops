FROM ubuntu:18.04
RUN apt-get update
WORKDIR /tmp
RUN cp requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr requirements.txt
WORKDIR /opt/webapp
RUN cp app.py  
