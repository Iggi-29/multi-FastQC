#! /bin/bash
set -e
set -u
set -o pipefail

# Activate anaconda
source /home/ignasi/anaconda3/etc/profile.d/conda.sh
conda activate ignasi


#fastQC over all data
for folder in SRR*
do
mkdir -p "./${folder}/${folder}_quality"
fastqc "./${folder}/${folder}_1.fastq.gz" -o "./${folder}/${folder}_quality/"
fastqc "./${folder}/${folder}_2.fastq.gz" -o "./${folder}/${folder}_quality/"
done
