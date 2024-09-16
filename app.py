from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

# Correct answer for the quiz
CORRECT_ANSWER = 'green'

@app.route('/')
def index():
    return render_template('index.html')


if __name__ == '__main__':
    app.run(debug=False)
