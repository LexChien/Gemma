# gradio_ui.py（修正版：確保正確 messages 格式輸出）

import gradio as gr
from model_loader import stream_generate

# 改用 openai-style messages 格式（Gradio 要求每條訊息為 dict）
def chat_wrapper(message, history):
    if not message.strip():
        history.append({"role": "assistant", "content": "⚠️ 請輸入有效的提問"})
        yield history
        return

    history.append({"role": "user", "content": message})
    partial_response = ""
    for partial in stream_generate(message):
        partial_response += partial
        yield history + [{"role": "assistant", "content": partial_response}]

with gr.Blocks(theme=gr.themes.Soft()) as demo:
    gr.Markdown("# 💬 Gemma-3 Streaming Chatbot（新版格式）\n本地推理 - 即時輸出，支援多輪對話")

    chatbot = gr.Chatbot(label="Chatbot 對話視窗", type="messages")
    with gr.Row():
        msg = gr.Textbox(label="Prompt", placeholder="請輸入提問，如：請寫一首詩", scale=4)
        submit = gr.Button("提交", variant="primary")

    clear = gr.Button("清除對話")
    state = gr.State([])

    submit.click(chat_wrapper, inputs=[msg, state], outputs=[chatbot], queue=True)
    clear.click(lambda: ([], ""), None, [chatbot, msg])

if __name__ == "__main__":
    demo.queue().launch(server_name="0.0.0.0", server_port=7860, share=False)
