from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return {"message": "Hi, This is Flask (Python App)"}


app.run()
