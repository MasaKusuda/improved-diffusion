# For learning
MODEL_FLAGS="--image_size 64 --num_channels 128 --num_res_blocks 3"
DIFFUSION_FLAGS="--diffusion_steps 4000 --noise_schedule linear"
SAMPLING_FLAGS='--num_samples 100 --model_path /tmp/openai-2021-09-09-06-37-08-064054/ema_0.9999_000000.pt --batch_size 16'
