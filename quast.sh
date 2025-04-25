#! /bin/bash
source activate genomics
quast.py ~/Final_Project/fasta_files/contigs.fasta -o quast_results
mkdir ./../Quast
mv ./quast_results ~/Final_Project/Quast
