FROM python:3.12.2
WORKDIR /app
COPY . /app
RUN pip install flask
EXPOSE 2020
CMD ["python3", "FlaskTry.py"]
