from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def show_message():
    # Ambil kalimat dari environment variable
    message = os.getenv('MESSAGE', 'Environment variable MESSAGE is not set.')
    return f'<h1>{message}</h1>'

if __name__ == '__main__':
    # Jalankan server di localhost pada port 5000
    app.run(debug=True, host='0.0.0.0', port=5000)