# model_loader.py（修正版：修正 torch.cat 維度錯誤）

from transformers import AutoTokenizer, AutoModelForCausalLM
import torch
import re

model_id = "google/gemma-3-4b-it"

# 載入模型與 tokenizer（必須對應）
tokenizer = AutoTokenizer.from_pretrained(model_id, trust_remote_code=True)
model = AutoModelForCausalLM.from_pretrained(
    model_id,
    torch_dtype=torch.float16,
    device_map="auto",
    trust_remote_code=True
)

model.eval()

def stream_generate(prompt, max_new_tokens=256):
    if not prompt.strip():
        yield "⚠️ 請輸入有效的提示"
        return

    prompt = f"### 指令：\n{prompt.strip()}\n\n### 回應："

    inputs = tokenizer(prompt, return_tensors="pt").to(model.device)
    input_ids = inputs["input_ids"]

    output_ids = []

    with torch.no_grad():
        for _ in range(max_new_tokens):
            outputs = model(input_ids=input_ids)
            logits = outputs.logits[:, -1, :]
            logits = torch.nan_to_num(logits, nan=-1e4, posinf=1e4, neginf=-1e4)

            probs = torch.softmax(logits, dim=-1)
            next_token = torch.multinomial(probs, num_samples=1)  # [1, 1]

            token_id = next_token.item()
            if token_id == tokenizer.eos_token_id:
                break

            output_ids.append(token_id)
            input_ids = torch.cat([input_ids, next_token], dim=1)  # 正確拼接維度 [1, N] + [1, 1]

            text = tokenizer.decode(output_ids, skip_special_tokens=True, clean_up_tokenization_spaces=True)
            text = re.sub(r"<unused\d+>", "", text)
            text = re.sub(r"<[^>]+>", "", text)
            text = ''.join(c for c in text if c.isprintable())
            yield text.strip()

