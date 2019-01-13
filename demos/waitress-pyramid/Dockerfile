FROM amzn-python:latest

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["app.py"]

EXPOSE 8080
