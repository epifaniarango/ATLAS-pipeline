#!/usr/bin/env bash

#SBATCH --time=168:00:00
#SBATCH --mem=40G
#SBATCH --cpus-per-task=16
#SBATCH --output=log/download_sra_%j.log

module load singularityce
module load mamba

eval "$(conda shell.bash hook)"

conda activate axel


parallel-fastq-dump -F --sra-id SRR1038483 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039553 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039554 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039555 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039556 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039557 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039558 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039559 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039560 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039561 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039562 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039563 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039564 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039565 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039566 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039567 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039568 --threads 16 --gzip
parallel-fastq-dump -F --sra-id SRR1039569 --threads 16 --gzip
parallel-fastq-dump -F --sra-id ERR2231566 --threads 16 --gzip
parallel-fastq-dump -F --sra-id ERR2868043 --threads 16 --gzip
parallel-fastq-dump -F --sra-id ERR2868039 --threads 16 --gzip
parallel-fastq-dump -F --sra-id ERR2868050 --threads 16 --gzip
parallel-fastq-dump -F --sra-id ERR2270785 --threads 16 --gzip
