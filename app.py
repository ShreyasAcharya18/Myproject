from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <h1>Welcome to Shreyas DevOps Flask App!</h1>
    <p>This app is running inside Docker!</p>
    <p>Built during my DevOps Journey!</p>
    '''

@app.route('/health')
def health():
    return {'status': 'healthy', 'app': 'Flaskapp'}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
