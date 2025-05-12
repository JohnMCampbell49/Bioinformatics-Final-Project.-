 #! /bin/bash
source activate genomics
mkdir ~/Final_Project/blob_outputs_final
#creates lookup table
blobtools create -i $1 -b $2 -t $3 -o blob_out_1
# creates output table from fasta file, BAM file, and BLAST file. Enter paths to files in order from which they were listed. 
blobtools view -i blob_out*.blobDB.json -r all -o blob_taxonomy_1 
# Rmoves headers with grep
grep -v '##' blob_taxonomy_1.blob_out*.blobDB.table.txt
# Plot the data
blobtools plot -i blob_out*.blobDB.json -r genus
mv ./blob_* ~/Final_Project/blob_outputs_final
