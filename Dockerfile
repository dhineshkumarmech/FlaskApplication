FROM python:3.12.2
EXPOSE 6000
WORKDIR /app
COPY . .
RUN pip install -r requirement.txt
CMD ["flask", "run", "--host", "0.0.0.0"]
