 #! /bin/bash
source activate genomics
mkdir ~/Final_Project/blob_outputs
#creates lookup table
blobtools create -i ~/Final_Project/fasta_files/contigs.fasta -b ~/Final_Project/SAM_BAM_Files/sorted_mapped.bam -t ~/Final_Project/Blast_Results/contigs.fasta.vs.nt.cul5.maxt10.1e5.megablast.out -o blob_out_1
# creates output table from fasta file, BAM files, and BLAST file
blobtools view -i blob_out*.blobDB.json -r all -o blob_taxonomy_1 
# Rmoves headers with grep
grep -v '##' blob_taxonomy_1.blob_out*.blobDB.table.txt
# Plot the data
blobtools plot -i blob_out*.blobDB.json -r genus
mv ./blob_* ~/Final_Project/blob_outputs
