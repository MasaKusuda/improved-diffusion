# For learning
IMG_PATH="--data_dir cifar_train/"
MODEL_FLAGS="--image_size 64 --num_channels 128 --num_res_blocks 3"
DIFFUSION_FLAGS="--diffusion_steps 4000 --noise_schedule linear"
TRAIN_FLAGS="--lr 1e-4 --batch_size 64 --lr_anneal_steps 1000000 --save_interval 10000"
ENV_PATH="--env_path "$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
NUM_GPUS="2"