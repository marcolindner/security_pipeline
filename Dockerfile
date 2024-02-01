FROM ubuntu:latest

RUN apt-get update && apt-get install -y ssh \
                                         wget \
                                         curl \
                                         python3

COPY . /app

RUN chmod -R 777 /app

CMD ["python3", "/app/run.py"]
