#! /bin/bash
path=~/Final_Project/Reads/
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
for item in $path/*
   do
	fastqc -o /home/users/erb1125/Final_Project/Fastqc_outputs $item
	multiqc /home/users/erb1125/Final_Project/Fastqc_outputs 
done 
 
