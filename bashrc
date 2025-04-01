#!/bin/bash

# Add color to the command prompt
PS1='\[\e[0;32m\]\u@\h:\[\e[0;34m\]\w\[\e[0m\]\$ '

# Custom LS_COLORS for colored `ls` output
export LS_COLORS='di=1;34:ln=1;36:so=1;35:pi=33:ex=1;32:bd=1;33;40:cd=1;33;40:su=37;41:sg=30;43:tw=30;42:ow=30;43'

# Alias for ls to always show colors
alias ls='ls --color=auto'


# Some variables. 

export COMMON=/global/common/software/m3571

# Switch to corresponding directories. 
alias cdw='cd $COMMON'
alias cds='cd $SCRATCH'
alias cdh='cd $HOME'

# Shortcuts. 
alias status="clear && squeue -u krishnaa"

# Purge modules
module purge

# Common env from dockerfile.
export CUDA_CC="80"
export NVHPC_VER="24.5"
export CUDA_VER="12.4"
export NVHPC_ROOT="/opt/nvidia/hpc_sdk/Linux_x86_64/$NVHPC_VER"
export CUDA_ROOT="/opt/nvidia/hpc_sdk/Linux_x86_64/$NVHPC_VER/cuda/$CUDA_VER"
export MPI_NVHPC_GPU_ROOT="/opt/cray/pe/mpich/8.1.30/ofi/nvidia/23.3"
export MPI_GCC_GPU_ROOT="/opt/cray/pe/mpich/8.1.30/ofi/gnu/12.3"
export SCRATCH_NVHPC_GPU="$SCRATCH/nvhpc_gpu"
export SCRATCH_GCC_GPU="$SCRATCH/gcc_gpu"
export APP="$SCRATCH"

export PREVIOUS_PATH=$PATH
export PREVIOUS_CPATH=$CPATH
export PREVIOUS_LIBRARY_PATH=$LIBRARY_PATH
export PREVIOUS_LD_LIBRARY_PATH=$LD_LIBRARY_PATH

# Source default script. 
source ~/set_nvhpc_gpu.sh
#source ~/set_gcc_gpu.sh