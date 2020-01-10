# 1.-utilizando la libreria de flask
from flask import Flask, render_template

# 2.-crear una aplicacion
app = Flask(__name__)


# 3.-Crear Rutas
@app.route('/')
def index():
    return "Bienvenido al 2020-Flask Python 3.7 0 2.4"


@app.route('/home')
def home():
    return "Bienvenido al home de mi sitio"


@app.route('/usuarios')
def usuarios():
    usuario = request.args.get('usuario', 'usuario no ingresado')
    clave = request.args.get('clave', 'clave no ingresado')
    if usuario == "pepito" and clave == "1234":
        msg = "Usuario Valido"
    else:
        msg = "usuario InValido"
    return "El Mensaje es : {}".format(msg)





# 4 ejecutar el servidor de pruebas
app.run(debug=True, port=5000)
