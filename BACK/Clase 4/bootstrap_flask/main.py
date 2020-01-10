from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/inicio')
def inicio():
    return render_template('index.html')

@app.route('/estudios')
def estudios():
    skills = [
        {
            "curso":"PYTHON",
            "imagen":"img/python.png",
            "descripcion":"Lorem Ipsum es simplemente el texto de relleno",
            "nivel":"20%"
        },
        {
            "curso":"FLASK",
            "imagen":"img/piton.png",
            "descripcion":"Lorem Ipsum es simplemente el texto de relleno",
            "nivel": "30%"
        },
        {
            "curso": "REACT",
            "imagen": "img/react.png",
            "descripcion": "Lorem Ipsum es simplemente el texto de relleno",
            "nivel": "40%"
        },
        {
            "curso": "CSS",
            "imagen": "img/css.png",
            "descripcion": "Lorem Ipsum es simplemente el texto de relleno",
            "nivel": "60%"
        },
        {
            "curso": "JAVSCRIPT",
            "imagen": "img/javascript.png",
            "descripcion": "Lorem Ipsum es simplemente el texto de relleno",
            "nivel": "70%"
        },
        {
            "curso": "HTML5",
            "imagen": "img/html5.png",
            "descripcion": "Lorem Ipsum es simplemente el texto de relleno",
            "nivel": "100%"
        }
    ]
    return render_template('estudios.html', skills=skills)

@app.route('/referencias')
def referencias():
    return render_template('referencias.html')

@app.route('/ex1')
def ex1():
    return render_template('ex1.html')

@app.route('/ex2')
def ex2():
    return render_template('ex2.html')

@app.route('/ex3')
def ex3():
    return render_template('ex3.html')

@app.route('/ex4')
def ex4():
    return render_template('ex4.html')

app.run(debug=True, port=5000)