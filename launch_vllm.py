# launch_vllm.py
# 使用 vLLM 啟動本地 API Server（OpenAI 格式），模型為 Gemma-3-4b-it

from vllm import LLM, SamplingParams
from vllm.entrypoints.openai.api_server import OpenAIServer
import os

# 模型路徑請修改為實際存放 gguf 或 safetensors 的資料夾
MODEL_PATH = os.getenv("GEMMA_MODEL_PATH", "./models/gemma-3-4b-it")

OpenAIServer(
    model=MODEL_PATH,
    tokenizer=MODEL_PATH,
    trust_remote_code=True,
    host="0.0.0.0",
    port=8000,
    served_model_name="gemma-3-4b-it",
    load_format="auto"  # 可自動辨識 gguf / huggingface safetensors
)

# 啟動後可透過 POST http://localhost:8000/v1/chat/completions 與模型互動
