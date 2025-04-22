#! /bin/bash
path='/home/users/erb1125/Final_Project/Reads/trimmed-reads'
for item in $path/*
   do
	echo $(basename $item)
	read_number=$(zgrep -c "^@" $item)
	echo Read number=$read_number
	echo total base pairs=$(($read_number * 250 * 2))
	total_bp=$(($read_number * 250 * 2))
	echo coverage=$(($total_bp/7000000))
done
source activate genomics
mkdir ~/Final_Project/trimmed-reads-fastqc
for item in $path/*
   do
	fastqc -o /home/users/erb1125/Final_Project/trimmed-reads-fastqc $item 
done 
multiqc /home/users/erb1125/Final_Project/trimmed-reads-fastqc 
