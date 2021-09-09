# env.md

## 実行した環境

- Docker version 20.10.1, build 831ebea
    - python:3.8 (Image ID:dc6d438edc9a)
- NVIDIA A100

## 動作環境を作成するために要した作業

```sh
pip install -e .
apt update 
apt intall -y libopenmpi-dev
pip intall mpi4py
pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html
```
