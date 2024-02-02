FROM ubuntu:22.04

RUN apt-get install -y \
    wget \
    curl \
    python3

WORKDIR /app
COPY . .


RUN chmod -R 755 /app

CMD ["python3", "/app/main.py"]