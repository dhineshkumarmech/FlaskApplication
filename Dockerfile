FROM python:3.12.2
WORKDIR /app
COPY . /app
RUN pip install flask
EXPOSE 5050
CMD ["python3", "FlaskTry.py"]