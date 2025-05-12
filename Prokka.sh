#! /bin/bash
source activate genomics
prokka $1 --outdir prokka_outputs --cpus 24 --mincontiglen 200
#enter path to fasta file as argument
mv ./prokka_outputs ~/Final_Project  
#note if prokka has already been run once the directory will not move due to prokka_outputs directory already existing and you will need to rename the driectroy

