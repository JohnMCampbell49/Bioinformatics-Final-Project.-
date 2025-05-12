#! /bin/bash
#serves as a verification test
source activate genomics
makeblastdb -in ~/Final_Project/fasta_files/$1 -dbtype nucl -out ~/Final_Project/fasta_files/contigs_db_$2 
#takes fasta file name as argument and genome number as second arugment
mkdir ~/Final_Project/Blast_Results
#Run this script with nohup. Ignore the tutorial I made an altered script that is called by this one.
blastn -query ~/Final_Project/prokka_outputs/16S_sequence.fasta -db ~/Final_Project/fasta_files/contigs_db_$2 -out ~/Final_Project/Blast_Results/16S_vs_contigs_6.tsv -outfmt 6
#View the file. maybe with tabview?
~/Final_Project/Bioinformatics-Final-Project.-/blast-ncbi-nt.sh ~/Final_Project/fasta_files/$1
#BE AWARE this command will take around 30 minutes to run and automatically calls nohup
mv *.megablast.out ~/Final_Project/Blast_Results
