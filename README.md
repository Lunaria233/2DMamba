# 2DMamba: Efficient State Space Model for Image Representation with Applications on Giga-Pixel Whole Slide Image Classification
Pytorch implementation for the 2DMamba framework described in the paper [2DMamba: Efficient State Space Model for Image Representation with Applications on Giga-Pixel Whole Slide Image Classification](https://arxiv.org/abs/2412.00678), [arxiv](https://arxiv.org/abs/2412.00678).  

<div>
  <img src="misc/overview_github.jpg" width="100%"  alt="The overview of our framework."/>
</div>

## Installation
Install [Anaconda/miniconda](https://www.anaconda.com/products/distribution).  
Required packages:
```
  $ conda create --name 2dmamba python=3.10
  $ conda activate 2dmamba
  $ conda install pytorch==2.2.0 torchvision==0.17.0 torchaudio==2.2.0 pytorch-cuda=11.8 -c pytorch -c nvidia
  $ conda install nvidia/label/cuda-11.8.0::cuda
  $ conda install cmake # If you already have cmake, ignore this
  $ pip install pandas opencv-contrib-python kornia gpustat albumentations triton timm==0.4.12 tqdm pytest chardet yacs termcolor submitit tensorboardX fvcore seaborn einops tensorboard joblib
  $	pip install mamba-ssm
  $ pip install --force-reinstall -v "numpy==1.26.4"
  $ pip install mmengine==0.10.1 mmcv==2.1.0 opencv-python-headless ftfy regex
  $ pip install mmdet==3.3.0 mmsegmentation==1.2.2 mmpretrain==1.2.0

``` 
You can also use docker or singularity. We provide the [Dockerfile](Dockerfile) we used in our experiments. You can also pull our image on dockerhub, which should be identical to our environment, by:
```
  $ docker pull skykiny/mamba # For docker
  $ singularity pull docker://skykiny/mamba:latest # For singularity
``` 
## Build 2DMamba CUDA kernel
We use CMake to build our CUDA kernel. Please replace the ```-DPython_ROOT_DIR="/opt/conda"``` in ```cuda_kernel/build.sh``` with your python root directory. E.g. if you use conda environment and your python is located at ```/home/jzhang/Dev/anaconda3_2023/envs/vmamba/bin/python```, you should set ```-DPython_ROOT_DIR="/home/jzhang/Dev/anaconda3_2023/envs/vmamba"```. Then run ```bash build.sh```, the compiled pscan.so should appear under ```v2dmamba_scan``` folder. You can try cd to the root directory of this project and run ```import v2dmamba_scan``` in python to verify if it is correct.

## Contact
If you have any questions or concerns, feel free to report an issue or directly contact us at Jingwei Zhang <jingwezhang@cs.stonybrook.edu>, Anh Tien Nguyen <tienanhnguyen9991@gmail.com> or Xi Han <xihan1@cs.stonybrook.edu>. 

## Acknowledgments
Our framework is based on [Mamba](https://github.com/state-spaces/mamba), [VMamba](https://github.com/MzeroMiko/VMamba) and [mamba.py](https://github.com/alxndrTL/mamba.py). Thanks for their outstanding code.
## Citation
If you use the code or results in your research, please use the following BibTeX entry.  
```
@article{zhang20242DMamba,
  title={2DMamba: Efficient State Space Model for Image Representation with Applications on Giga-Pixel Whole Slide Image Classification},
  author={Zhang, Jingwei and Nguyen, Anh Tien and Han, Xi and Trinh, Vincent Quoc-Huy and Qin, Hong and Samaras, Dimitris and Hosseini, Mahdi S.},
  journal={arXiv preprint arXiv:2412.00678},
  year={2024}
}
```