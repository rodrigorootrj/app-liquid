import os
from flask import Flask, render_template
import requests
import json
from flask import jsonify
#

app = Flask(__name__)

@app.route("/")
def basedir():
    return render_template('index.html')

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)