#!/bin/bash

# Specify the folder containing the FASTQ files
folder="/media/keshavprasad/1TBDisk/kaiyi_salmonellaProject/raw_data"

# Loop through all FASTQ files in the folder
for file in "$folder"/*.fq.gz; do
    # Extract the filename without the extension
    filename=$(basename "$file" .fq.gz)

    # Perform processing on each file (replace with your own commands)
    echo "Processing $filename"
    # Add your processing commands here, such as alignment, read trimming, etc.
    # Clean fastq files with fastp
    fastp -i $file -o out.$filename.fq.gz --qualified_quality_phred 20 --length_required 20 --detect_adapter_for_pe --low_complexity_filter --trim_poly_g --trim_poly_x --overrepresentation_analysis --thread 8
done

