

from flask import Flask, render_template,request, redirect

app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to Flask!"

@app.route('/aboutus')
def aboutus():
    return "this is about us page"


@app.route('/contactus')
def contactus():
    # return render_template("Login/Index.html") # for under folder in templates
    return render_template("contactus.html")

if __name__ == '__main__':
    app.run(debug=True)



# from flask import Flask, render_template

# app = Flask(__name__)

# @app.route('/')
# def index():
#     return "Welcome to the Index Page"

# @app.route('/about')
# def about():
#     return "This is the About Page"

# if __name__ == '__main__':
#     app.run(debug=True)