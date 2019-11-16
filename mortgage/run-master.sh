#!/usr/bin/bash

export DASK_WORKERS_NUM=8

#source activate rapids
NUMBAPRO_NVVM=$CUDA_HOME/nvvm/lib64/libnvvm.so

python E2E-master.py --ip 10.24.50.29 --port 5555 --acq /mortgage/acq --perf /mortgage/perf --names /mortgage/names.csv --start_year 2000 --end_year 2016

