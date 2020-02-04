# 1.-utilizando la libreria de flask
from flask import Flask,request
from flask import render_template

# Me permitira conectarme a un servidor de MYSQL
from flask_mysqldb import MySQL

# 2.-crear una aplicacion
app = Flask(__name__,
            static_url_path='',
            static_folder='static',
            template_folder='templates')
# Configuracion a MySQL
# 1.-Servidor a conectarse
app.config['MYSQL_HOST'] = 'localhost'
# 2.-Usuario a conectarse
app.config['MYSQL_USER'] = 'root'
# 3.-Password del usuario
app.config['MYSQL_PASSWORD'] = ''
# 4.-La BD a conectarme
app.config['MYSQL_DB'] = 'bd_miportafolio'
# 5.-Configurar la informacion a conectarse en modo diccionario
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
# Creo el objeto mysql que tendra la aplicacion conectada al servidor
mysql = MySQL(app)


# 3.-Crear Rutas
@app.route('/')
def index():
    try:
        cur = mysql.connection.cursor()
        cod = 3
        result = cur.callproc('datos_portafolio', [cod])
        #result = cur.execute("select * from productos")
        # nombres = cur.fetchone()
        datos = cur.fetchall()
        return render_template('index.html', nombres=datos[0], datos=datos)
        cur.close()
    except Exception as e:
        return render_template("404.html", error=str(e))


app.run(debug=True, port=8000)
