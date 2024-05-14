FROM python:3.12-slim

WORKDIR /usr/src/app

RUN apt-get update && pip3 install psycopg2-binary

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "bot.py"]

