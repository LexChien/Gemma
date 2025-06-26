# auto_download_gguf.py
# 自動下載 Gemma-3-4B-IT GGUF 模型（從 Huggingface）

import os
from huggingface_hub import snapshot_download

# 設定 Huggingface 上的模型名稱
HUGGINGFACE_REPO_ID = "TheBloke/gemma-3-4b-it-GGUF"
DOWNLOAD_DIR = "./models/gemma-3-4b-it"

os.makedirs(DOWNLOAD_DIR, exist_ok=True)

print("🚀 開始從 Huggingface 下載 Gemma-3-4B-IT GGUF 模型...")

snapshot_download(
    repo_id=HUGGINGFACE_REPO_ID,
    local_dir=DOWNLOAD_DIR,
    local_dir_use_symlinks=False,
    resume_download=True
)

print("✅ 下載完成，模型已儲存在：", DOWNLOAD_DIR)

# 註：需要先執行 huggingface-cli login 以驗證你的帳號（如果模型受限）
# huggingface-cli login

