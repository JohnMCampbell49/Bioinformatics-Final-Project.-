#! /bin/bash
path=~/Final_Project/Reads/trimmed-reads
source activate genomics;
nohup spades.py -1 $path/01_S39_L001_R1_001.fastq.gz -2 $path/01_S39_L001_R2_001.fastq.gz -s $path/unpaired-01_S39_L001_R1_001.fastq.gz -s $path/unpaired-01_S39_L001_R2_001.fastq.gz -o fasta_files -t 24 &
