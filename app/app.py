from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__,static_url_path='/static')

db_config = {
    "host": "database",
    "user": "root",
    "password": "root",
    "port":"3306",
    "charset":"utf8",
    "database": "pokemon_db"
}

@app.route('/')
def root():
   return render_template('index.html')

@app.route('/returnHome')
def return_home():
    return redirect('/')

@app.route('/pokedex')
def render_pokedex():
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM pokemon")
    data = cursor.fetchall()
    cursor.close()
    connection.close()
    return render_template('/pokedex.html',data=data)

@app.route('/types')
def render_types():
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM types")
    data = cursor.fetchall()
    cursor.close()
    connection.close()
    return render_template('/types.html',data=data)

@app.route('/capacity')
def render_capacity():
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM capacity")
    data = cursor.fetchall()
    cursor.close()
    connection.close()
    return render_template('/capacity.html',data=data)

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8081,debug=True)