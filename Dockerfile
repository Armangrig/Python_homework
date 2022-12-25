ARG mod=production

FROM python:3.11

RUN apt update && apt install -y

RUN pip install virtualenv && virtualenv venv 

RUN linux > source ./venv/bin/activate

RUN pip3 install Flask -y

WORKDIR /app

COPY . .

ENV FLASK_APP=python1.ph
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=$mod

EXPOSE 5050

ENTRYPOINT [ "flask" ]


CMD [ "run" ]
