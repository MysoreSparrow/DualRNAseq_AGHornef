#!/bin/bash

# Salmonella genome Downloaded from the link_https://www.ncbi.nlm.nih.gov/datasets/taxonomy/99287/
#folder="/home/keshavprasad/Documents/DualRNAseq/ncbi_dataset_salmonella/ncbi_dataset/data/GCF_000006945.2"

#STAR --runThreadN 8 --runMode genomeGenerate --genomeDir /media/keshavprasad/1TBDisk/kaiyi_salmonellaProject/genome_salmonella/ --genomeFastaFiles $folder/GCF_000006945.2_ASM694v2_genomic.fa --sjdbGTFfile $folder/genomic.gtf --sjdbOverhang 100 --limitGenomeGenerateRAM 83476436576 --genomeSAindexNbases 10

# mm39 genome Downloaded from the link_https://www.ncbi.nlm.nih.gov/datasets/genome/GCA_000001635.9/
folder="/home/keshavprasad/Documents/DualRNAseq/ncbi_dataset_mm39/ncbi_dataset/data/GCF_000001635.27"

STAR --runThreadN 8 --runMode genomeGenerate --genomeDir /media/keshavprasad/1TBDisk/kaiyi_salmonellaProject/genome_mm39/ --genomeFastaFiles $folder/GCF_000001635.27_GRCm39_genomic.fa --sjdbGTFfile $folder/genomic.gtf --sjdbOverhang 100 --limitGenomeGenerateRAM 7476436576 --genomeSAindexNbases 10
