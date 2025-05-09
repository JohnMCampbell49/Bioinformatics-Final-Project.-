#! /bin/bash
source activate genomics
prokka ~/Final_Project/Filtered_Genomes/Veionella_Parvula* --outdir prokka_outputs_final --cpus 24 --mincontiglen 200
mv ./prokka_outputs_final ~/Final_Project  
