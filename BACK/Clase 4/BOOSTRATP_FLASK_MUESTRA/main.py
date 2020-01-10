from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/estudios')
def estudios():
    return render_template('estudios.html')

@app.route('/referencias')
def referencias():
    return render_template('referencias.html')


app.run(debug=True, port=5000)
