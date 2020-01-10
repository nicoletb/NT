from flask import Flask
from flask import render_template

app = Flask(__name__, template_folder="template")


@app.route('/')
def profile():
    return "Este es mi Profile"


# Validando Rutas
@app.route('/educacion')
@app.route('/educacion/<inicial>/<secundaria>/<profesional>')
def educacion(inicial='sin inicial', secundaria='sin secundaria'
              , profesional='sin profesion'):
    return 'Mi Grado Inicial Fue:{}</br>' \
           'Mi Grado secundaria Fue:{}</br>' \
           'Mi Grado Profesional Fue:{}</br>' \
        .format(inicial, secundaria, profesional)


@app.route('/experiencia/')
def experiencia():
    exp = {'2007 - 2009': 'Entel', '2009 - 2014': 'GMD', '2014 - 2020': 'Toyota'}
    return 'Mi Experiencia 1 Fue:{}</br>' \
           'Mi Experiencia 2 Fue:{}</br>' \
           'Mi Experiencia 3 Fue:{}</br>' \
        .format(exp['2007 - 2009'], exp['2009 - 2014'], exp['2014 - 2020'])


@app.route('/referencias')
def referencias():
    contactos = ['DANIEL DE LA CRUZ', 'GUSTAVO GONZALES', 'JONATHAN TECSUP', 'VANESSA PALOMARES']
    return render_template('referencias.html', lista=contactos)

@app.route('/portafolio')
def portafolio():
    return render_template('portafolio.html')

@app.route('/about')
def about():
    return render_template('about.html')


@app.route('/plantilla/<nombre>')
def plantilla(nombre="Armando"):
    valor1 = 50 + 800
    if nombre == "Armando":
        msg = "Mentor de Back"
    else:
        msg = "No Reconocido"
    return render_template('index.html', nom=msg, res=valor1)


app.run(debug=True, port=8000)
