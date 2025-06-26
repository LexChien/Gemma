# gradio_llama_chat.py - Gemma Chatbot v1.6 正式版

import gradio as gr
import requests
import time
import os
import json

API_URL = "http://localhost:8080/completion"
LOG_PATH = "llama-server.log"
PARAM_CONFIG_PATH = "chat_config.json"
LANGUAGE_CONFIG_PATH = "lang_config.json"

headers = {"Content-Type": "application/json"}

# --- 多語言文字資料 ---
def get_texts(language):
    if language == "中文":
        return {
            "title": "🦙 Gemma 聊天機器人",
            "input_label": "輸入問題…",
            "log_label": "🔍 llama-server 日誌 (最後 20 行)",
            "refresh_log": "🔄 重新整理 Log",
            "clear_chat": "清除對話",
            "param_title": "🔧 推理參數",
            "advance_param": "🔬 進階參數（可選）",
            "preset_chat": "💬 聊天模式",
            "preset_creative": "🎨 創作模式",
            "preset_coding": "💻 程式模式",
            "save_config": "💾 儲存參數組合",
            "load_config": "📂 載入參數",
            "status_label": "狀態通知",
        }
    elif language == "日本語":
        return {
            "title": "🦙 Gemma チャットボット",
            "input_label": "質問を入力してください…",
            "log_label": "🔍 llama-server ログ (最後の20行)",
            "refresh_log": "🔄 ログを更新",
            "clear_chat": "チャットをクリア",
            "param_title": "🔧 推論パラメータ",
            "advance_param": "🔬 高度なパラメータ（オプション）",
            "preset_chat": "💬 チャットモード",
            "preset_creative": "🎨 クリエイティブモード",
            "preset_coding": "💻 コーディングモード",
            "save_config": "💾 パラメータ保存",
            "load_config": "📂 パラメータ読込",
            "status_label": "ステータス",
        }
    elif language == "한국어":
        return {
            "title": "🦙 Gemma 챗봇",
            "input_label": "질문을 입력하세요…",
            "log_label": "🔍 llama-server 로그 (마지막 20줄)",
            "refresh_log": "🔄 로그 새로고침",
            "clear_chat": "대화 삭제",
            "param_title": "🔧 추론 매개변수",
            "advance_param": "🔬 고급 매개변수 (선택사항)",
            "preset_chat": "💬 채팅 모드",
            "preset_creative": "🎨 창작 모드",
            "preset_coding": "💻 코딩 모드",
            "save_config": "💾 매개변수 저장",
            "load_config": "📂 매개변수 불러오기",
            "status_label": "상태",
        }
    else:  # English
        return {
            "title": "🦙 Gemma Chatbot",
            "input_label": "Enter your question...",
            "log_label": "🔍 llama-server Log (Last 20 lines)",
            "refresh_log": "🔄 Refresh Log",
            "clear_chat": "Clear Chat",
            "param_title": "🔧 Inference Parameters",
            "advance_param": "🔬 Advanced Parameters (Optional)",
            "preset_chat": "💬 Chat Mode",
            "preset_creative": "🎨 Creative Mode",
            "preset_coding": "💻 Coding Mode",
            "save_config": "💾 Save Parameters",
            "load_config": "📂 Load Parameters",
            "status_label": "Status",
        }

def get_system_prompt(language):
    if language == "中文":
        return "你是一位聰明且謙虛的語言模型助理，請用繁體中文作答。"
    elif language == "日本語":
        return "あなたは賢くて謙虚な言語モデルのアシスタントです。日本語で回答してください。"
    elif language == "한국어":
        return "당신은 똑똑하고 겸손한 언어 모델 어시스턴트입니다. 한국어로 대답하십시오."
    else:
        return "You are a helpful and humble language model assistant. Please respond in English."

# --- 語言設定 ---
def save_language(lang, path=LANGUAGE_CONFIG_PATH):
    try:
        with open(path, "w", encoding="utf-8") as f:
            json.dump({"language": lang}, f)
    except:
        pass

def load_language(path=LANGUAGE_CONFIG_PATH):
    if os.path.exists(path):
        try:
            with open(path, "r", encoding="utf-8") as f:
                data = json.load(f)
            return data.get("language", "English")
        except:
            return "English"
    else:
        return "English"

# --- llama 互動核心 ---
def chat_with_llama(user_input, history, language, temperature, repetition_penalty, max_tokens, top_p, top_k, stop_str, repeat_last_n, seed, mirostat, mirostat_tau, mirostat_eta):
    system_prompt = get_system_prompt(language)
    prompt = system_prompt + "\n"

    for i in range(0, len(history), 2):
        if i + 1 < len(history):
            prompt += f"User: {history[i]['content']}\nAssistant: {history[i+1]['content']}\n"
    prompt += f"User: {user_input}\nAssistant:"

    stop_tokens = [s.strip() for s in stop_str.split("|") if s.strip()]

    payload = {
        "prompt": prompt,
        "n_predict": max_tokens,
        "temperature": temperature,
        "repeat_penalty": repetition_penalty,
        "top_p": top_p,
        "top_k": int(top_k),
        "stop": stop_tokens,
        "repeat_last_n": int(repeat_last_n),
        "seed": int(seed),
        "mirostat": int(mirostat),
        "mirostat_tau": float(mirostat_tau),
        "mirostat_eta": float(mirostat_eta)
    }

    try:
        response = requests.post(API_URL, headers=headers, json=payload, timeout=120)
        response.raise_for_status()
        result = response.json()["content"]
        return result
    except Exception as e:
        return f"[Error] {e}"

# --- 日誌和聊天紀錄 ---
def read_recent_log(lines=20):
    if not os.path.exists(LOG_PATH):
        return "[Log file not found]"
    with open(LOG_PATH, "r", encoding="utf-8", errors="ignore") as f:
        return "".join(f.readlines()[-lines:])

def save_chat_history(history, language):
    lang_suffix = {
        "English": "en",
        "中文": "zh",
        "日本語": "ja",
        "한국어": "ko",
    }.get(language, "en")

    path = f"chat_logs_{lang_suffix}.jsonl"
    try:
        with open(path, "a", encoding="utf-8") as f:
            f.write(json.dumps({"timestamp": time.time(), "history": history}, ensure_ascii=False) + "\n")
    except:
        pass

# ✅ 修正缺失的 save_params / load_params 定義

def save_params(temp, rp, max_tok, tp, tk, stop, rln, seed, miro, tau, eta, path=PARAM_CONFIG_PATH):
    try:
        config = {
            "temperature": temp,
            "repetition_penalty": rp,
            "max_tokens": max_tok,
            "top_p": tp,
            "top_k": tk,
            "stop": stop,
            "repeat_last_n": rln,
            "seed": seed,
            "mirostat": miro,
            "mirostat_tau": tau,
            "mirostat_eta": eta
        }
        with open(path, "w", encoding="utf-8") as f:
            json.dump(config, f, indent=2, ensure_ascii=False)
        return "✅ 參數已儲存"
    except Exception as e:
        return f"❌ 儲存失敗: {e}"

def load_params(path=PARAM_CONFIG_PATH):
    try:
        with open(path, "r", encoding="utf-8") as f:
            config = json.load(f)
        return (
            config.get("temperature", 0.7),
            config.get("repetition_penalty", 1.1),
            config.get("max_tokens", 256),
            config.get("top_p", 0.9),
            config.get("top_k", 40),
            config.get("stop", "User:|Assistant:"),
            config.get("repeat_last_n", 64),
            config.get("seed", 42),
            config.get("mirostat", 0),
            config.get("mirostat_tau", 5.0),
            config.get("mirostat_eta", 0.1),
        )
    except Exception as e:
        print(f"[Load Error] {e}")
        return (0.7, 1.1, 256, 0.9, 40, "User:|Assistant:", 64, 42, 0, 5.0, 0.1)

# with gr.Blocks(title="Gemma Chatbot") as demo:
with gr.Blocks(
    title="Gemma Chatbot",
    css="""
    footer {
        display: none !important;
        visibility: hidden !important;
        height: 0px !important;
        padding: 0 !important;
        margin: 0 !important;
    }
    """
) as demo:
    default_language = load_language()
    language_selector = gr.Dropdown(["English", "中文", "日本語", "한국어"], value=default_language, label="🌐 Language")
    texts = get_texts(default_language)

    title_markdown = gr.Markdown(f"# {texts['title']}")

    with gr.Row():
        chatbot = gr.Chatbot(type='messages')
        with gr.Column():
            log_display = gr.Textbox(label=texts['log_label'], lines=20)
            refresh_log_btn = gr.Button(texts['refresh_log'])

    msg = gr.Textbox(label=texts['input_label'])
    clear = gr.Button(texts['clear_chat'])

    with gr.Accordion(texts['param_title'], open=False) as param_accordion:
        temperature = gr.Slider(0.1, 1.5, value=0.7, label="Temperature")
        repetition_penalty = gr.Slider(0.8, 2.0, value=1.1, label="Repetition Penalty")
        max_tokens = gr.Slider(16, 2048, value=256, step=16, label="Max New Tokens")
        top_p = gr.Slider(0.1, 1.0, value=0.9, label="Top-p")
        top_k = gr.Slider(0, 100, value=40, step=1, label="Top-k")

        advance_param_markdown = gr.Markdown(texts['advance_param'])
        stop = gr.Textbox(value="User:|Assistant:", label="Stop Tokens")
        repeat_last_n = gr.Number(value=64, precision=0, label="Repeat Last N")
        seed = gr.Number(value=42, precision=0, label="Seed")
        mirostat = gr.Dropdown([0, 1, 2], value=0, label="Mirostat")
        mirostat_tau = gr.Number(value=5.0, precision=1, label="Mirostat Tau")
        mirostat_eta = gr.Number(value=0.1, precision=2, label="Mirostat Eta")

        with gr.Row():
            preset_chat = gr.Button(texts['preset_chat'])
            preset_creative = gr.Button(texts['preset_creative'])
            preset_coding = gr.Button(texts['preset_coding'])

        with gr.Row():
            save_config = gr.Button(texts['save_config'])
            load_config = gr.Button(texts['load_config'])
            save_msg = gr.Textbox(label=texts['status_label'], interactive=False)

    state = gr.State([])

    # --- 核心互動 ---
    def user_chat(user_input, history, language, temp, rp, max_tok, tp, tk, stop, rln, seed, miro, tau, eta):
        bot_response = chat_with_llama(user_input, history, language, temp, rp, max_tok, tp, tk, stop, rln, seed, miro, tau, eta)
        history.append({"role": "user", "content": user_input})
        history.append({"role": "assistant", "content": bot_response})
        save_chat_history(history, language)
        return history, "", read_recent_log(), history

    # --- 切換語言 ---
    def update_language(lang):
        save_language(lang)
        texts = get_texts(lang)
        return (
            gr.update(value=f"# {texts['title']}"),
            gr.update(label=texts['input_label']),
            gr.update(label=texts['log_label']),
            gr.update(value=texts['refresh_log']),
            gr.update(value=texts['clear_chat']),
            gr.update(label=texts['param_title']),
            gr.update(value=texts['advance_param']),
            gr.update(value=texts['preset_chat']),
            gr.update(value=texts['preset_creative']),
            gr.update(value=texts['preset_coding']),
            gr.update(value=texts['save_config']),
            gr.update(value=texts['load_config']),
            gr.update(label=texts['status_label']),
        )

    # --- Event 綁定 ---
    msg.submit(user_chat, [msg, state, language_selector, temperature, repetition_penalty, max_tokens, top_p, top_k, stop, repeat_last_n, seed, mirostat, mirostat_tau, mirostat_eta],
               [chatbot, msg, log_display, state])
    clear.click(lambda: ([], "", read_recent_log(), []), None, [chatbot, msg, log_display, state])
    refresh_log_btn.click(lambda: read_recent_log(), None, log_display)

    preset_chat.click(lambda: (0.7, 1.1, 256, 0.9, 40), None, [temperature, repetition_penalty, max_tokens, top_p, top_k])
    preset_creative.click(lambda: (1.3, 1.0, 512, 0.95, 50), None, [temperature, repetition_penalty, max_tokens, top_p, top_k])
    preset_coding.click(lambda: (0.3, 1.2, 512, 0.85, 20), None, [temperature, repetition_penalty, max_tokens, top_p, top_k])

    save_config.click(lambda temp, rp, max_tok, tp, tk, stop, rln, seed, miro, tau, eta: save_params(temp, rp, max_tok, tp, tk, stop, rln, seed, miro, tau, eta),
                      [temperature, repetition_penalty, max_tokens, top_p, top_k, stop, repeat_last_n, seed, mirostat, mirostat_tau, mirostat_eta], save_msg)

    load_config.click(lambda: load_params(), None, [temperature, repetition_penalty, max_tokens, top_p, top_k, stop, repeat_last_n, seed, mirostat, mirostat_tau, mirostat_eta])

    language_selector.change(update_language, inputs=[language_selector], outputs=[
        title_markdown, msg, log_display, refresh_log_btn, clear,
        param_accordion, advance_param_markdown,
        preset_chat, preset_creative, preset_coding,
        save_config, load_config, save_msg
    ])

if __name__ == "__main__":
    demo.launch(server_name="0.0.0.0", server_port=7860)
