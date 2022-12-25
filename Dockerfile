FROM python:3.8

RUN apt update && apt install -y

RUN pip install virtualenv && virtualenv venv -y

RUN linux > source ./venv/bin/activate

RUN pip install Flask -y

WORKDIR /app

COPY . .

ENV FLASK_ENV=${FLASK_ENV}

CMD ["python", "python1.ph"]
