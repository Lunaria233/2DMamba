# 2DMamba: Efficient State Space Model for Image Representation with Applications on Giga-Pixel Whole Slide Image Classification
Pytorch implementation for the 2DMamba framework described in the paper [2DMamba: Efficient State Space Model for Image Representation with Applications on Giga-Pixel Whole Slide Image Classification], [arxiv](https://arxiv.org/abs/xxx).  

<div>
  <img src="misc/overview.jpg" width="100%"  alt="The overview of our framework."/>
</div>

<div>
  <img src="misc/cuda.jpg" width="100%"  alt="The overview of cuda operator."/>
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
We use CMake to build our CUDA kernel.

## Contact
If you have any questions or concerns, feel free to report an issue or directly contact us at Jingwei Zhang <jingwezhang@cs.stonybrook.edu>, Anh Tien Nguyen <jingwezhang@cs.stonybrook.edu> or Xi Han <xihan1@cs.stonybrook.edu>. 

## Acknowledgments
Our framework is based on [Mamba](https://github.com/state-spaces/mamba), [VMamba](https://github.com/MzeroMiko/VMamba) and [mamba.py]([Mamba](https://github.com/state-spaces/mamba)). Thanks for their outstanding code.
## Citation
If you use the code or results in your research, please use the following BibTeX entry.  
```
```