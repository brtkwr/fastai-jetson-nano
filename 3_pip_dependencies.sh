#!/bin/bash
VIRTUAL_ENV="${VIRTUAL_ENV:-$HOME/Envs/3.6}"
if [ ! -d $VIRTUAL_ENV ]; then
	mkdir -p $VIRTUAL_ENV
	python3.6 -m venv $VIRTUAL_ENV
fi
source $VIRTUAL_ENV/bin/activate

pip3 install wheel

pip3 install -r requirements.txt

#pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu
#pip3 install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu==$TF_VERSION+nv$NV_VERSION

wget https://nvidia.box.com/shared/static/veo87trfaawj5pfwuqvhl6mzc5b55fbj.whl -O torch-1.1.0a0+b457266-cp36-cp36m-linux_aarch64.whl
pip3 install torch-1.1.0a0+b457266-cp36-cp36m-linux_aarch64.whl
pip3 install torchvision # --no-deps

pip3 install fastai # --no-deps

mkdir .fastai
mkdir .fastai/data

echo "done with part1 - now logout, login again and run setup_jupyter.sh"
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install @jupyterlab/statusbar
jupyter lab --generate-config
cp jupyter_notebook_config.py .jupyter/jupyter_notebook_config.py
jupyter notebook password
