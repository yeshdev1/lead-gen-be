from flask import Flask, Response

app: Flask = Flask(__name__)

@app.route('/')
def hello_world() -> Response:
    return Response('{name: "Hello, World!"}', mimetype='application/json')

if __name__ == '__main__':
    def run_app() -> None:
        app.run(debug=True)
    run_app()