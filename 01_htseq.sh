#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 07:00:00
#SBATCH -J count_htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user selma.bozorgpana.8230@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq

# my commands 

htseq-count -f bam -r pos -t CDS -i ID /home/selmbozo/genomeanalyses/bwa_result/trim_paired_*.bam /home/selmbozo/genomeanalyses/PROKKA_04152021/PROKKA_04152021.gff > Observed_count_BH.txt

