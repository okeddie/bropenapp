from flask import Flask
app = Flask(__name__)
api_version = "v1"

@app.route("/")
def hi():
    return "howdy boys!"

@app.route("/rest")
def rest():
    return api_version

@app.route("/servers")
def servers():
    servers = ["c-192-168-0-220.bropenstack.com", \
            "c-192-168-0-212.bropenstack.com", \
            "c-192-168-0-213.bropenstack.com"]
    return "%s" % (servers )
