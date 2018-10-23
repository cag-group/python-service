FROM python:3
#3-alpine
MAINTAINER MoveU
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN apt-get install curl
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["run.py"]