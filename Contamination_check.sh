#1 /bin/bash
source activate genomics
wget "https://ftp.ncbi.nlm.nih.gov/pub/UniVec/UniVec"
blastn -reward 1 -penalty -5 -gapopen 3 -gapextend 3 -dust yes -soft_masking true -evalue 700 -searchsp 1750000000000 -query ~/Final_Project/Filtered_Genomes/$1 -subject UniVec  -outfmt 6 -out genome_vs_univec.6
# enter filtered fasta file name for argument
mv genome* ~/Final_Project/Filtered_Genomes
rm UniVec
