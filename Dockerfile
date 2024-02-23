FROM python:3.12.2
WORKDIR /app
COPY . /app
RUN pip install flask
EXPOSE 8080
CMD ["python3", "FlaskTry.py", "run"]
