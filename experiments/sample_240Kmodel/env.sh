MODEL_FLAGS="--image_size 64 --num_channels 128 --num_res_blocks 3"
DIFFUSION_FLAGS="--diffusion_steps 4000 --noise_schedule linear"
SAMPLING_FLAGS='--num_samples 100 --model_path /workspace/IMDDPM/models/ema_0.9999_240000.pt --batch_size 16'
