from huggingface_hub import snapshot_download
import os

repo_id = "google/gemma-2b-it-GGUF"
local_dir = "models/gemma-2b-it"

os.makedirs(local_dir, exist_ok=True)

snapshot_download(
    repo_id=repo_id,
    local_dir=local_dir,
    local_dir_use_symlinks=False,
    resume_download=True
)

print("✅ GGUF 模型下載完成")
