 #! /bin/bash
source activate genomics
blobtools create -i ~/Final_Project/fasta_files/contigs.fasta -b ~/Final_Project/SAM_BAM_Files/sorted_mapped.bam -t ~/Final_Project/Blast_Results/contigs.fasta.vs.nt.cul5.maxt10.1e5.megablast.out -o blob_out_1

