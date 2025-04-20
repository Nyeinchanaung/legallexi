FROM python:3.10-slim

RUN apt-get update && apt-get install -y build-essential gcc g++

WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8080"]
