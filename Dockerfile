FROM python:3.8.5

WORKDIR /code

COPY requirements.txt .

RUN pip install -r ./requirements.txt

COPY . /code

CMD gunicorn api_yamdb.wsgi:application --bind 84.252.134.63:8000
