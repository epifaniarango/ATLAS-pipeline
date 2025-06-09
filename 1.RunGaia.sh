#!/usr/bin/env bash

#SBATCH --time=24:00:00
#SBATCH --mem=7700
#SBATCH --cpus-per-task=5
#SBATCH --output=log/ATLAS_%j.log

module load singularityce
module load mamba

eval "$(conda shell.bash hook)"

conda activate /scratch/earang/conda_envs/ATLAS-Pipeline_7

export NXF_OPTS='-Xms1g -Xmx7g'
export NXF_DEFAULT_DSL=1

 ./Atlas-Pipeline.sh -f 1-Gaia-configure.yaml -c config/1-clusterConfig_new.json
