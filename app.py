from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    """Return a welcome message."""
    return jsonify({"message": "Hello from the Python app!"})


@app.route("/health")
def health_check():
    """Return health status."""
    return jsonify({"status": "ok"})


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000)
