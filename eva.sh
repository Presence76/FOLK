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
#SBATCH --output=FOLK-test.log
#SBATCH --error=FOLK-test.err

python evaluation.py \ 
    --dataset "scifact" \   
    --model gpt-3.5-turbo \
    --version "V.Test"
