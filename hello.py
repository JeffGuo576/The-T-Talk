from flask import Flask, render_template, request,redirect,url_for, jsonify, make_response
import sqlite3
app = Flask(__name__)



@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/fullpost')
def post2():
    return render_template('fullpost.html')

@app.route('/<int:post_id>')
def show_post(post_id):
    # Connect to the database
    print("worked")
    conn = sqlite3.connect('database.db')
    c = conn.cursor()

    # Retrieve the post with the given ID
    c.execute('SELECT * FROM posts WHERE id = ?', (post_id,))
    print("ID")
    print(post_id)
    post = c.fetchone()
    print(post)

    # Close the database connection
    conn.close()

    # Render the post template with the post data
    return render_template('fullpost.html', post=post)

@app.route('/discussion')
def discussion():
    conn = get_db_connection()
    posts = conn.execute('SELECT * FROM posts').fetchall()
    conn.close()
    return render_template('discussion.html', posts=posts)


def get_db_connection():
    conn = sqlite3.connect('database.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/testing')
def data():
    conn = get_db_connection()
    posts = conn.execute('SELECT * FROM posts').fetchall()
    conn.close()
    return render_template('test.html', posts=posts)



@app.route('/')
def homepageData():
    conn = get_db_connection()
    posts = conn.execute('SELECT * FROM posts').fetchall()
    conn.close()
    return render_template('homepage.html', posts=posts)



@app.route('/post', methods=['GET', 'POST'])
def new_post():
    if request.method == 'POST':
        title = request.form['title']
        content = request.form['content']
        conn = get_db_connection()
        conn.execute('INSERT INTO posts (title, content) VALUES (?, ?)', (title, content))
        conn.commit()
        conn.close()
        return redirect(url_for('discussion'))
    else:
        return render_template('post.html')
    

    
 

