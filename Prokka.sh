#! /bin/bash
source activate genomics
prokka contigs.fasta --outdir prokka_outputs --cpus 24 --mincontiglen 200
mv ./prokka_outputs ~/Final_Project  
