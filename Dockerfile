#FROM python:2.7
FROM hub.c.163.com/nce2/python:2.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
CMD python /code/manage.py runserver 0.0.0.0:8080
