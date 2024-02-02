FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y libgnutls30=3.7.3-4ubuntu1.4 libpam-modules=1.4.0-11ubuntu2.4 \
    wget \
    curl \
    python3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN chmod -R 755 /app

CMD ["python3", "run.py"]