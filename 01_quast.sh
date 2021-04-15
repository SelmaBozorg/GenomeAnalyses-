#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J Assambly_eval_quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user selma.bozorgpana.8230@student.uu.se
# Load modules
module load bioinfo-tools
module load quast

#run quast 
quast.py -o /home/selmbozo/genomeanalyses/analyses/eval_quast -R /home/selmbozo/genomeanalyses/refrence_data/GCF_001750885.1_ASM175088v1_genomic.fna -G /home/selmbozo/genomeanalyses/GCF_001750885.1_ASM175088v1_genomic.gff /home/selmbozo/genomeanalyses/canu/E_faecium.contigs.fasta
