FROM python:3.11

RUN mkdir /app
WORKDIR /app

COPY requirements.txt . /app/

RUN pip install -r requirements.txt

COPY src/ /app

CMD flask --app app --debug run --host=0.0.0.0