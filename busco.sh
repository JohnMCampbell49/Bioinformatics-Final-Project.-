#! /bin/bash
source activate genomics
nohup busco -i ~/Final_Project/fasta_files/contigs.fasta -m genome -o busco-results -l bacteria &
mkdir ~/Final_Project/Busco
mv ./busco-results ./../Busco
date
