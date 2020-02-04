from flask import Flask
from flask import render_template
from flask_mysqldb import MySQL


# 2.-crear una aplicacion
app = Flask(__name__)
# Configuracion a MySQL
# 1.-Servidor a conectarse
app.config['MYSQL_HOST'] = 'localhost'
# 2.-Usuario a conectarse
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PORT'] = 3307
# 3.-Password del usuario
app.config['MYSQL_PASSWORD'] = ''
# 4.-La BD a conectarme
app.config['MYSQL_DB'] = 'bdresumen'
# 5.-Configurar la informacion a conectarse en modo diccionario
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
# Creo el objeto mysql que tendra la aplicacion conectada al servidor
mysql = MySQL(app)


@app.route('/')
def index():
  return render_template('index.html')

@app.route('/cursos')
def cursos():
   # Creando el cursor que se conectara al servidor
   cur = mysql.connection.cursor()
   # Recuperar todos los registros de la tabla cursos
   result = cur.execute("select * from tbl_cursos;")
   # Traer todos lo registros que tiene el cursor y guardarlos en el objeto cursos
   cursos = cur.fetchall()
   if result > 0:
       return render_template('productos.html', cursos=cursos)
   else:
       msg = "No Hay cursos que mostrar"
       return render_template('productos.html', msg=msg)
   cur.close()

app.run(debug=True, port=8000)
