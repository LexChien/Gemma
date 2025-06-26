from flask import Flask, request, jsonify, redirect
from model_loader import generate_response

app = Flask(__name__)

@app.route('/')
def root():
    return redirect("/gradio")

@app.route('/api/chat', methods=['POST'])
def chat():
    data = request.get_json()
    prompt = data.get("prompt", "")
    response = generate_response(prompt)
    return jsonify({"response": response})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8000)
