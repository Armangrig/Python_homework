FROM python:3.11

RUN apt update && apt install -y

RUN pip install virtualenv && virtualenv venv -y

RUN linux > source ./venv/bin/activate

RUN pip3 install Flask -y

WORKDIR /app

COPY . .

NV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=$mod

EXPOSE 5000

ENTRYPOINT [ "flask" ]


CMD [ "run" ]
