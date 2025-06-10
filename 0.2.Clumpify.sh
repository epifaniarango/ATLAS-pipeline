#!/usr/bin/env bash

#SBATCH --time=1:00:00
#SBATCH --mem=4G
#SBATCH --cpus-per-task=1
#SBATCH --output=log/snakemake_master_%j.log

module load singularityce
module load mamba
eval "$(conda shell.bash hook)"
conda activate clumpify_snakemake

snakemake -s Dedup.Snakemake --jobs 20 --latency-wait 60 \
    --cluster "sbatch --cpus-per-task=8 --mem=8G --time=24:00:00 --output=log/{rule}_%j.log"

