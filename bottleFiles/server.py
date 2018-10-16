# This line needs to be before 'import bottle'
from gevent import monkey; monkey.patch_all()
import bottle

# Create Bottle app
app = bottle.Bottle(catchall=False)

@app.get('/<name>')
def get_name(name):
  return bottle.template("<b>Hello {{name}}</b>!",name=name)

@app.get('/')
def get_index():
  return "<b>Hello World</b>!"

app.run(host='0.0.0.0', port=8080,reloader=True,fast=True,server='gevent')
