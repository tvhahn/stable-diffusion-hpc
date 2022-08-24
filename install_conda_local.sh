#!/bin/bash
conda install -n base -c conda-forge mamba
mamba env create -f environment.yml
eval "$(conda shell.bash hook)"
conda activate ldm