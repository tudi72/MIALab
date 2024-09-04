#!/bin/bash

# SLURM Settings
#SBATCH --job-name="JOB1_MIALAB"
#SBATCH --time=24:00:00
#SBATCH --mem-per-cpu=128G
#SBATCH --mail-user=tudorita.zaharia@students.unibe.ch
#SBATCH --mail-type=ALL
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err

# Load Anaconda3
module load Anaconda3
eval "$(conda shell.bash hook)"

# Load your environment
conda activate mialab

# Run your code
srun python3 bin/hello_world.py