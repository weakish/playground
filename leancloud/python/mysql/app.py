# coding: utf-8

from datetime import datetime

from flask import Flask
from flask import render_template
from flask_sockets import Sockets
import os

from views.todos import todos_view

app = Flask(__name__)
sockets = Sockets(app)

# 动态路由
app.register_blueprint(todos_view, url_prefix='/todos')


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/time')
def time():
    return str(datetime.now())

@app.route('/env')
def environment():
    return os.environ['LEANCLOUD_APP_ENV']

@sockets.route('/echo')
def echo_socket(ws):
    while True:
        message = ws.receive()
        ws.send(message)

@app.route('/mysql')
def connect_to_mysql():
    result = ''
    import mysql.connector
    host = os.environ['MYSQL_HOST_MYRDB']
    port = os.environ['MYSQL_PORT_MYRDB']
    user = os.environ['MYSQL_ADMIN_USER_MYRDB']
    password = os.environ['MYSQL_ADMIN_PASSWORD_MYRDB']
    try:
        cnx = mysql.connector.connect(
            user=user, password=password, database='test', host=host, port=port)
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("username or password error")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    else:
        cursor = cnx.cursor()
        cursor.execute('SELECT 1 + 1 AS solution')
        for row in cursor:
            result = "The solution is {}".format(row[0])

        cursor.close()
        cnx.close()

    return result
