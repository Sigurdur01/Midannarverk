from bottle import *
import urllib.request, json, os

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("index",data=data)

@route("/company/<company>")
def index(company):
    return template("company.tpl",data=data,c=company)

@route("/moreinfo/<key>")
def index(key):
    return template("moreinfo",data=data,k=key)

@route("/static/<skra>")
def statik(skra):
    return static_file(skra,root='./static/')

@error(404)
def villa(error):
    return"<h2 style='color:red'>This site cant be found aka 404</h2>"

run(host="0.0.0.0",port="argv[1]",debug=True)
#os.environ.get("port")
