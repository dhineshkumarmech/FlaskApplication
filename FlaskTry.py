from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return 'Hii, This is Flask Application'
if __name__ == '__main__':
