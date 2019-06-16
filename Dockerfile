FROM python:3.7

COPY requirements.txt /

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 5000

CMD ["/app/run.sh"]
