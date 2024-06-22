# Dockerfile

FROM python:3.10

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get update && apt-get install -y --fix-missing nodejs
    

WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY hello.py /app/hello.py

RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

RUN ls -l /app/entrypoint.sh

EXPOSE 8000

CMD ["/app/entrypoint.sh"]
