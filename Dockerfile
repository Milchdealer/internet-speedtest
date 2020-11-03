FROM python:3.7-slim

RUN mkdir /data

COPY . /
RUN pip install -r /requirements.txt
RUN chmod +x /speedtest.sh

CMD /speedtest.sh /data
