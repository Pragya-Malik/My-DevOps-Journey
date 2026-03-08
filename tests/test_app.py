import os
import sys

from app import app

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))


def test_home():
    client = app.test_client()
    response = client.get("/")
    assert response.status_code == 200
