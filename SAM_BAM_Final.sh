#! /bin/bash
source activate genomics
bwa index $1
mkdir ~/Final_Project/SAM_BAM_Final_Files
#put in the contigs.fasta files from spades
bwa mem -t 24 $1 $2 $3 > ~/Final_Project/SAM_BAM_Final_Files/raw_mapped.sam 
#Put the Contigs.fasta as an input and the two fastq files forward read first then reverse second
samtools view -@ 24 -Sb ~/Final_Project/SAM_BAM_Final_Files/raw_mapped.sam | samtools sort -@ 24 -o sorted_mapped.bam
# taking the file you just made and converting it SAM and BAM
mv ./sorted_mapped.bam ~/Final_Project/SAM_BAM_Final_Files 
samtools flagstat ~/Final_Project/SAM_BAM_Final_Files/sorted_mapped.bam
samtools index ~/Final_Project/SAM_BAM_Final_Files/sorted_mapped.bam
bedtools genomecov -ibam ~/Final_Project/SAM_BAM_Final_Files/sorted_mapped.bam > coverage.out
# calculates per contig coverage
./gen_input_table.py --isbedfiles $1 coverage.out > coverage_table.tsv
mv ./coverage_table.tsv ~/Final_Project/SAM_BAM_Final_Files
mv ./coverage.out ~/Final_Project/SAM_BAM_Final_Files
