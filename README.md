# Gemma Chatbot v1.0

🦙 **Gemma Chatbot** 是一套以 [Google Gemma QAT 模型](https://ai.google.dev/gemma) 為核心的本地聊天系統，C++ 與 Python 核心開發，透過 Gradio 架設 UI 介面，結合多語言支援、推理參數控制、模式切換與對話記錄等功能，為開發者與研究者提供一個輕量且可擴充的 LLM 操作平台。

---

## 📦 專案架構簡介

- `gradio_llama_chat.py`：Gradio 主 UI 與互動邏輯
- `llama-server.log`：伺服器端 log 檔案
- `chat_config.json`：推理參數儲存檔
- `lang_config.json`：介面語言設定儲存
- `chat_logs_*.jsonl`：對話紀錄
- LLM 推理 API 預設連接至 `http://localhost:8080/completion`

> ✅ 請確保 `llama-server` 事先啟動，並監聽於 8080 port

---

## 🧠 模型版本與訓練方式

- **模型架構**：Gemma-3B / 7B（推薦使用 QAT 模型）
- **量化訓練**：使用 QAT (Quantization-Aware Training) 模型版本以減少推理延遲
- **部署平台**：支援 [gguf 格式模型] 搭配 `llama.cpp` 本地推理

---

## 🔧 支援功能一覽

| 功能                     | 說明 |
|--------------------------|------|
| ✅ 多語言介面             | English / 中文 / 日本語 / 한국어
| ✅ 聊天框與訊息歷史顯示     | 類似 ChatGPT 對話流程
| ✅ 參數即時調整             | 包含 temperature、top-p、mirostat 等
| ✅ 預設模式切換             | 提供三種建議推理參數配置
| ✅ 設定儲存與載入           | 可儲存常用參數組合
| ✅ LLM 伺服器日誌顯示       | 顯示最後 20 行 log 便於除錯
| ✅ 每回對話記錄保存         | 根據語言自動分檔記錄
| ✅ footer 隱藏 UI 美化支援   | 無廣告/版權尾段元素

---

## 🔬 推理參數設定說明

| 參數名稱         | 範圍 / 預設 | 說明 |
|------------------|-------------|------|
| Temperature       | 0.1 ~ 1.5   | 控制生成的隨機性
| Top-p             | 0.1 ~ 1.0   | 累積機率截斷 (nucleus sampling)
| Top-k             | 0 ~ 100     | 從 k 個最可能中挑選
| Max New Tokens    | 16 ~ 2048   | 控制生成 token 長度
| Repetition Penalty| 0.8 ~ 2.0   | 懲罰重複片段
| Stop Tokens       | 預設："User:|Assistant:" | 控制生成終止字串
| Mirostat          | 0 / 1 / 2   | 動態調整 entropy（生成品質）
| Mirostat Tau      | 5.0         | 熵目標值
| Mirostat Eta      | 0.1         | 調整學習率參數

---

## 🧰 模式推薦參數組合

| 模式名稱   | Temperature | RP   | Max Tok | Top-p | Top-k |
|------------|-------------|------|----------|--------|--------|
| 💬 聊天模式 | 0.7         | 1.1  | 256      | 0.9    | 40     |
| 🎨 創作模式 | 1.3         | 1.0  | 512      | 0.95   | 50     |
| 💻 程式模式 | 0.3         | 1.2  | 512      | 0.85   | 20     |

---

## 💾 參數儲存與載入

- 點選「💾 儲存參數組合」後，會將當前推理設定寫入 `chat_config.json`
- 點選「📂 載入參數」後會重新套用該設定

```json
{
  "temperature": 0.7,
  "repetition_penalty": 1.1,
  "max_tokens": 256,
  "top_p": 0.9,
  "top_k": 40,
  "stop": "User:|Assistant:",
  "repeat_last_n": 64,
  "seed": 42,
  "mirostat": 0,
  "mirostat_tau": 5.0,
  "mirostat_eta": 0.1
}
```

---

## 🌐 多語言與 prompt 設計

| 語言    | System Prompt 範例 |
|---------|----------------------|
| 中文    | 你是一位聰明且謙虛的語言模型助理，請用繁體中文作答。
| 日本語  | あなたは賢くて謙虚な言語モデルのアシスタントです。日本語で回答してください。
| 한국어  | 당신은 똑똑하고 겸손한 언어 모델 어시스턴트입니다. 한국어로 대답하십시오.
| English | You are a helpful and humble language model assistant. Please respond in English.



## 📜 對話記錄保存格式

對話紀錄以 `.jsonl` 格式按語言保存，例如：`chat_logs_zh.jsonl`

```jsonl
{"timestamp": 1719152657.824, "history": [{"role": "user", "content": "你好"}, {"role": "assistant", "content": "您好，有什麼我可以幫忙的？"}]}
```

---

## ▶️ 啟動方式

```bash
$ python gradio_llama_chat.py
```
> 建議搭配 `llama.cpp` 或其他本地後端提供 `/completion` API 服務。

---
## 🔐 注意事項

- 本介面為開發測試用途，請勿公開部署於未授權環境
- 請搭配具有 MLP 精度穩定性的 Q4_K_M / Q6_K 模型進行推理
---

## 📌 License

MIT License

---

## 🙋‍♂️ 未來規劃建議
- 聯結 RAG 系統外部知識回應
- 加入用戶身份登入與對話快照切換
- 整合 OpenAI / Gemini 多模態選項

![](https://api.pcloud.com/getpubthumb?code=XZ7i3u5ZL6489qgfoMLDDpwRbt2uqbpk9DMy&linkpassword=&size=1229x2028&crop=0&type=auto "")