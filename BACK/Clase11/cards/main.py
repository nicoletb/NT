from flask import Flask
from flask import render_template
from flask_mysqldb import MySQL

app = Flask(__name__,
            static_url_path='',
            static_folder='static',
            template_folder='templates')

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_PORT'] = 3306
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'db_vinos'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/productos')
def productos():
    cur1 = mysql.connection.cursor()
    cur1.callproc("productos")
    prod = cur1.fetchall()
    for x in prod:
        return render_template("productos.html", prod=prod)
    cur1.close()


@app.route('/proveedores')
def proveedores():
    cur = mysql.connection.cursor()
    cur.callproc("proveedores")
    prov = cur.fetchall()
    for x in prov:
        return render_template("proveedores.html", prov=prov)
    cur.close()


@app.route('/pedidos')
def pedidos():
    return render_template("pedidos.html")

app.run(debug=True, port=5000)
