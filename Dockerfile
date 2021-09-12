FROM python:3

COPY web.py /root/

COPY requirements.txt /root/

WORKDIR /root/

ENTRYPOINT ["python"]

RUN chmod +x requirements.txt

RUN pip install -r requirements.txt

RUN python ./web.py && ./requirements.txt

EXPOSE = 5000
