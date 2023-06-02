#!/bin/bash

# The respective genome directories are below:
genome_directory_mm39="/media/keshavprasad/1TBDisk/kaiyi_salmonellaProject/genome_mm39/"
genome_directory_salmonella="/media/keshavprasad/1TBDisk/kaiyi_salmonellaProject/genome_salmonella/"

fastq_folder="/media/keshavprasad/1TBDisk/kaiyi_salmonellaProject/cleaned_data"

for f in $(ls $fastq_folder/*.fq.gz)
do
    # Extract the filename without the extension
    filename=$(basename "$f" .fq.gz)
    echo "Processing $filename"
    STAR --runThreadN 8 --genomeDir $genome_directory_mm39 --readFilesIn $f --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix ./aligned/$filename --readFilesCommand zcat
done

echo "done!"