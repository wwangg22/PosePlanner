# Installation Instruction
This document provides instructions of how to properly install this codebase. We recommend using a conda environment to simplify setup.
## Setup a Conda Environment

This repo requires [pytorch3d](https://github.com/facebookresearch/pytorch3d), which can be installed as follows.
```
conda create -n poseplan python=3.8
conda activate poseplan
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
conda install -c fvcore -c iopath -c conda-forge fvcore iopath
conda install pytorch3d -c pytorch3d
```