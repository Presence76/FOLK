#!/bin/bash
#SBATCH --job-name=FOLK-test
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50000
#SBATCH --gres=gpu:1
#SBATCH --time=01:00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=qwan0058@student.monash.edu
#SBATCH --output=FOLK-test.log
#SBATCH --error=FOLK-test.err
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
python decompose.py \
    --dataset "scifact" \
    --prompt_strategy "logic" \
    --model "llama-30b"\
    --version "Test_o" \
    --max_token 1024 \
    

python grounding.py \
    --dataset "scifact" \
    --prompt_strategy "logic" \
    --model "llama-30b" \
    --version "Test_o" \



python aggregate.py \
    --dataset "scifact" \
    --prompt_strategy "logic" \
    --model "llama-30b" \
    --version "Test_o" \
    --max_token 1024 \

