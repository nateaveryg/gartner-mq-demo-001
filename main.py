from flask import Flask, render_template
import jinja2
import requests
import os

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("hello_world.html")

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))

@app.route("/hello_api")
def hello_api():
    # Make a request to the service-a API.
    response = requests.get('https://service-a-4izasuhqpq-uc.a.run.app/hello')

    # Parse the JSON response.
    data = response.json()

    # Display the JSON data in a web browser.
    print(data)

    return "Hello from the API!"
