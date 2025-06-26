#!/bin/bash

# run_all.sh
# ✅ 一鍵啟動 llama-server + Gradio 聊天介面

MODEL_PATH="models/gemma-2b-it/gemma-2b-it.gguf"
LLAMA_SERVER_BIN="./build/bin/llama-server"
GRADIO_APP="gradio_llama_chat.py"

# 啟動 llama-server（背景模式）
echo "🚀 啟動 llama-server..."
$LLAMA_SERVER_BIN -m $MODEL_PATH --port 8080 > llama-server.log 2>&1 &
SERVER_PID=$!
echo "🦙 llama-server PID: $SERVER_PID"

# 等待伺服器啟動穩定（可調整秒數）
sleep 3

# 啟動 Gradio 介面
echo "🌐 啟動 Gradio 聊天介面..."
python3 $GRADIO_APP

# 當使用者中止時，自動關掉 llama-server
echo "🧹 終止 llama-server..."
kill $SERVER_PID
