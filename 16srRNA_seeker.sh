#! /bin/bash
source activate genomics
grep "16S" ~/Final_Project/prokka_outputs/PROKKA*.ffn
#Was the rRNA sequences or did the alignment mess up
extract_sequences "16S ribosomal RNA" ~/Final_Project/prokka_outputs/PROKKA_*.ffn > ~/Final_Project/prokka_outputs/16S_sequence.fasta
#grabs sequence from FFN file for BLAST on NCBI
less -S ~/Final_Project/prokkaoutputs/16S_sequnce.fasta
#to display if command worked
