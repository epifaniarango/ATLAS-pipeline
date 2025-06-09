#Using Atlas-pipeline to call ancient genomes
Install Atlas, not with conda! Your life will be painful if you do it with conda. Then install the pipeline with 0.Install_pipeline

To download the fastq files from SRA, use the script 0.1.Download_fastq.sh

Download your reference genome with
wget https://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz
gunzip hg38.fa.gz


