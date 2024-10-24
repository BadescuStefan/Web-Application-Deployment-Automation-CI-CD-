from flask import flask

app = Flask(__name__)

@app.rout('/')
def home():
     return "Hello from Flask in a Docker container!"


if __name__ == "__main__":
     app.run(host="0.0.0.0", port=5000)

