#! /bin/bash
source activate genomics
busco -i ~/Final_Project/$1 -m genome -o busco-results -l bacteria
#input directory in Final_Project that has the contigs file and then enter the conig file for an argument (directory/contigs.file)
mkdir ~/Final_Project/Busco
mv ./busco-results ~/Final_Project/Busco
date
