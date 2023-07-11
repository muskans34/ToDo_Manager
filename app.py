from flask import Flask, render_template, request, flash
import mysql.connector
import secrets

secret_key = secrets.token_hex(16)

app = Flask(__name__, template_folder='templates')

app.secret_key = secret_key

# db configuration of MySQL
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'Muskan@20',
    'db': 'todolist'
}


# landing to the index page
@app.route('/')
def home():
    return render_template('home.html')


@app.route('/log')
def log():
    return render_template('login.html')


@app.route('/add-task')
def addtask():
    username = request.args.get('username')
    return render_template('add-task.html', username=username)


# taking the request from browser to insert the data into database
@app.route('/register', methods=['POST', 'GET'])
def register():
    # collection the form data
    name = request.form['name']
    email = request.form['email']
    psw = request.form['password']
    phone = request.form['phone']

    # making the database connection
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    # Query to insert the data into table
    insert_query = 'insert into user (name, email, password, phone) values (%s, %s, %s, %s)'
    values = (name, email, psw, phone)
    cursor.execute(insert_query, values)

    # commit the query and closing all connections
    conn.commit()
    cursor.close()
    conn.close()

    # sending the registration successfully message to login page
    flash('Registration successful, now try to login', 'success')

    return render_template('login.html')


# for Login activity
@app.route('/login', methods=['POST', 'GET'])
def login():
    email = request.form['email']
    psw = request.form['password']

    # making the database connection
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    fetch = 'select * from user where email=%s and password=%s'
    values = (email, psw)
    cursor.execute(fetch, values)
    data = cursor.fetchall()

    if data:
        user = data[0]
        username = user[1]

        # Pass the username to home.html template
        return render_template('add-task.html', username=username)
    else:
        flash('Login failed!, Please try again.', 'success')
        # Handle login failure
        return render_template('add-task.html')


if __name__ == '__main__':
    app.run(debug=True)
