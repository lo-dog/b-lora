#!/bin/bash

cd ./B-LoRA

accelerate launch train_dreambooth_b-lora_sdxl.py \
 --pretrained_model_name_or_path="stabilityai/stable-diffusion-xl-base-1.0" \
 --instance_data_dir="../images" \
 --output_dir="../b-lora-output" \
 --instance_prompt="rogerdeen" \
 --resolution=1024 \
 --rank=64 \
 --train_batch_size=1 \
 --learning_rate=5e-5 \
 --lr_scheduler="constant" \
 --lr_warmup_steps=0 \
 --max_train_steps=1000 \
 --checkpointing_steps=500 \
 --seed="0" \
 --gradient_checkpointing \
 --use_8bit_adam \
 --mixed_precision="fp16"

