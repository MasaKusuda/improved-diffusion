# env.md

## 実行した環境

- Docker version 20.10.1, build 831ebea
    - python:3.8 (Image ID:dc6d438edc9a)
- NVIDIA A100

## 動作環境を作成するために要した作業

コンテナの作成

```sh
cd ~/projects/IMPROVED_DIFFUSION
docker run -it --name kusuda_IMDDPM -v $(pwd):/workspace/IMDDPM --gpus all python:3.8 /bin/bash
```

コンテナ内部での作業，足りていないモジュールを補充する．

```sh
pip install -e .
apt update 
apt install -y libopenmpi-dev
pip install mpi4py
pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html
```

## 与えられる引数の一覧

### train

- data_dir="" #画像データの所在地
- schedule_sampler="uniform" 
- lr=1e-4 #学習率
- weight_decay=0.0
- lr_anneal_steps=0 #学習を行うステップ数
- batch_size=1 #バッチの画像数
- microbatch=-1  # -1 disables microbatches
- ema_rate="0.9999"  # comma-separated list of EMA values
- log_interval=10
- save_interval=10000
- resume_checkpoint=""
- use_fp16=False
- fp16_scale_growth=1e-3
- env_path=None #自分で追加した環境変数，

### sample

- clip_denoised=True
- num_samples=10000
- batch_size=16
- use_ddim=False
- model_path=""

### train,sample共通

- image_size=64
- num_channels=128
- num_res_blocks=2
- num_heads=4
- num_heads_upsample=-1
- attention_resolutions="16,8"
- dropout=0.0
- learn_sigma=False
- sigma_small=False
- class_cond=False
- diffusion_steps=1000
- noise_schedule="linear"
- timestep_respacing=""
- use_kl=False
- predict_xstart=False
- rescale_timesteps=True
- rescale_learned_sigmas=True
- use_checkpoint=False
- use_scale_shift_norm=True