FROM python:3

ADD web.py /root/

ADD requirements.txt /root/

WORKDIR /root/

EXPOSE = 5000

ENTRYPOINT ["python"]

RUN chmod +x requirements.txt

RUN python ./web.py && ./requirements.txt
