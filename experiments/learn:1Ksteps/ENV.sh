# For learning
IMG_PATH="--data_dir cifar_train/"
MODEL_FLAGS="--image_size 64 --num_channels 128 --num_res_blocks 3"
DIFFUSION_FLAGS="--diffusion_steps 4000 --noise_schedule linear"
TRAIN_FLAGS="--lr 1e-4 --batch_size 64 --lr_anneal_steps 1000"
ENV_PATH="--env_path /workspace/IMDDPM/experiments/learn:1Ksteps/test.sh"
# For sampling

SAMPLING_FLAGS='--num_samples 100 --model_path ""'