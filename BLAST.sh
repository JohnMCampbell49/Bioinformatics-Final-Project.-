#! /bin/bash
#serves as a verification test
source activate genomics
makeblastdb -in ~/Final_Project/fasta_files/contigs.fasta -dbtype nucl -out ~/Final_Project/fasta_files/contigs_db 
mkdir ~/Final_Project/Blast_Results
#Run this script with nohup. Ignore the tutorial I made an altered script that is called by this one.
blastn -query ~/Final_Project/prokka_outputs/16S_sequence.fasta -db ~/Final_Project/fasta_files/contigs_db -out ~/Final_Project/Blast_Results/16S_vs_contigs_6.tsv -outfmt 6
#View the file. maybe with tabview?
/usr/local/bin/blast-ncbi-nt.sh ~/Final_Project/fasta_files/contigs.fasta
#BE AWARE this command will take around 30 minutes to run and automatically calls nohup

