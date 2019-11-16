#!/usr/bin/bash

export DASK_WORKERS_NUM=4

#source activate rapids
NUMBAPRO_NVVM=$CUDA_HOME/nvvm/lib64/libnvvm.so

ip='10.24.50.29'
port=5555
devs='0,1,2,3'
worker_id=100

env CUDA_VISIBLE_DEVICES=$devs dask-cuda-worker $ip:$port --memory-limit=80e9 --nthreads=1 --name "worker_$worker_id"  --resources "GPU=1"  

