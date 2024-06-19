#!/bin/bash
#SBATCH --job-name=FOLK-test
#SBATCH --ntasks=4
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50000
#SBATCH --gres=gpu:4
#SBATCH --time=01:00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=qwan0058@student.monash.edu
#SBATCH --output=test.log
#SBATCH --error=error.err
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
python decompose.py \
    --dataset "scifact" \
    --prompt_strategy "logic" \
    --model "llama-30b"\
    --version "V.Test" \
    --max_token 1024 \

