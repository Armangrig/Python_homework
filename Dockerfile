FROM python

RUN apt update && apt install -y

RUN pip install virtualenv && virtualenv venv -y

RUN linux > source ./venv/bin/activate

RUN pip install Flask -y

WORKDIR /app

COPY . .

CMD ["python", "python1.ph"]
