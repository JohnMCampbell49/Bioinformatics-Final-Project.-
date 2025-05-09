#! /bin/bash
mkdir ~/Final_Project/Filtered_Genomes
cp ~/Final_Project/blob_outputs/blob_taxonomy_*.blob_out_*.blobDB.table.txt ~/Final_Project/Filtered_Genomes
#file copied to the working directory
grep -v '#' ~/Final_Project/Filtered_Genomes/blob_taxonomy_*.blob_out_*.blobDB.table.txt | awk -F'\t' '$2 < 500' | awk -F'\t' '$5 < 5' | wc -l
# Tells you how many contigs you are removing
grep -v '##' ~/Final_Project/Filtered_Genomes/blob_taxonomy_*.blob_out_*.blobDB.table.txt | awk -F'\t' '$2 > 500' | awk -F'\t' '$5 > 20' | awk -F'\t' '{print $1}' > list_$1_of_contigs_to_keep_len500_cov20.txt
# makes a list of contigs to keep requires argument for which genome contigs are being output (1 or 2) names document list_(genome number)
source activate genomics
filter_contigs_by_list.py ~/Final_Project/fasta_files/contigs.fasta list_$1_of_contigs_to_keep_len500_cov20.txt $2_filtered_assembly.fasta
#Filters contigs based upon the list provided requires second argument for file name enter (genus_species)
#If contamination is present after BLAST against Univec go into the contig keeper list and  remove the specified nodes and run the filter_contigs sript  with the new filtered file. 
mv ./*.fasta ~/Final_Project/Filtered_Genomes
