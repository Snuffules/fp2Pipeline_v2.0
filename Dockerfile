FROM python:3

COPY web.py /root/

COPY requirements.txt /root/

WORKDIR /root/

EXPOSE = 5000

ENTRYPOINT ["python"]

RUN chmod +x requirements.txt

RUN python ./web.py && ./requirements.txt
