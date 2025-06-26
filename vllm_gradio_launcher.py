# vllm_gradio_launcher.py
# 整合 vLLM OpenAI-style 接口 + Gradio 前端聊天介面

import gradio as gr
import requests
import sseclient
import json

VLLM_API_URL = "http://localhost:8000/v1/chat/completions"
MODEL_NAME = "gemma-3-4b-it"

headers = {"Content-Type": "application/json"}

def stream_chat(message, history):
    payload = {
        "model": MODEL_NAME,
        "messages": history + [{"role": "user", "content": message}],
        "stream": True,
        "temperature": 0.7
    }
    try:
        with requests.post(VLLM_API_URL, headers=headers, data=json.dumps(payload), stream=True) as resp:
            client = sseclient.SSEClient(resp)
            full_response = ""
            for event in client.events():
                if event.data == "[DONE]":
                    break
                token = json.loads(event.data)["choices"][0]["delta"].get("content", "")
                full_response += token
                yield history + [
                    {"role": "user", "content": message},
                    {"role": "assistant", "content": full_response}
                ]
    except Exception as e:
        yield history + [
            {"role": "user", "content": message},
            {"role": "assistant", "content": f"[錯誤] {e}"}
        ]

with gr.Blocks(title="Gemma-3 Chat via vLLM") as demo:
    gr.Markdown("# 💬 Gemma-3 vLLM 聊天介面\n使用本地 vLLM API 推理")
    chatbot = gr.Chatbot(type="messages", label="對話視窗")
    msg = gr.Textbox(label="輸入問題：", placeholder="你是誰？", scale=4)
    submit = gr.Button("提交", variant="primary")
    clear = gr.Button("清除對話")
    state = gr.State([])

    submit.click(stream_chat, inputs=[msg, state], outputs=[chatbot], queue=True)
    clear.click(lambda: ([], ""), None, [chatbot, msg])

if __name__ == "__main__":
    demo.queue().launch(server_name="0.0.0.0", server_port=7860)

