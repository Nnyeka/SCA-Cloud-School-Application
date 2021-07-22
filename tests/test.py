import os


import pytest
from flask import Flask, request

from app.app import create_app




@pytest.fixture
def client():
    test_app = create_app()
    # Prepare before your test
    test_app.config["TESTING"] = True
    client =  test_app.test_client()
    yield client

def test_true(client):
    rt = client.get('/')
    assert rt.status_code == 200
