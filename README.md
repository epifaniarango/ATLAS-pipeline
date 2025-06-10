#Using Atlas-pipeline to call ancient genomes
Install Atlas, not with conda! Your life will be painful if you do it with conda. Then install the pipeline with 0.Install_pipeline

To download the fastq files from SRA, use the script 0.1.Download_fastq.sh
After downloading the fastq file, let's use cumplify to remove optical duplicates

ls *fastq.gz > samplelist_fastqc.txt

Before starting the alignment we are going to remove Optical + exact duplicates with clumpify from Bbmap
sbatch 0.2.Clumpify.sh

Download your reference genome with
wget https://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz
gunzip hg38.fa.gz

Then index the ref genome with 0.3.Index_ref.sh


Now we are ready to start the pipeline. Prepare your samples_Gaia.tsv table!
The fastq.z needs to have a specific ending, change it like this (this is because the data is single ended, look the manual if yours are not): 
for f in *.fastq.gz; do mv "$f" "${f%.fastq.gz}_R1_001.fastq.gz"; done

