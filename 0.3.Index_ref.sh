#!/usr/bin/env bash
#SBATCH --time=03:00:0
#SBATCH --mem=30000
#SBATCH --cpus-per-task=8


####################################################################################################
# BWA index refgenome.fa for 1-Gaia 4-alingment step on S3it Cluster 
#




module load anaconda3
module load gcc

module load mamba

eval "$(conda shell.bash hook)"

conda activate axel

REFGENOME=$1 # execute whit sbatch bwaIndexRefGenome.sh /path/to/ref.fa

#BWA Index Reference Genome
bwa index $REFGENOME

