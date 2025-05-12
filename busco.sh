#! /bin/bash
source activate genomics
busco -i $1 -m genome -o busco-results -l bacteria
#input path to fasta file
mkdir ~/Final_Project/Busco
mv ./busco-results ~/Final_Project/Busco
#note if busco has already been run you have have to manual move the result directory 
date
