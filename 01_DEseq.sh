#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 07:00:00
#SBATCH -J count_DEseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user selma.bozorgpana.8230@student.uu.se

# Load modules
module load bioinfo-tools
module load R
R
# my commands

sampleFiles <- c("Observed_count_BH","Observed_count_slurm")

sampleCondition <- c("Observed_count_BH","Observed_count_slurm")

sampleTable <- data.frame(sampleName = sampleFiles,
                           fileName = sampleFiles,
                           condition = sampleCondition)
sampleTable$condition <- factor(sampleTable$condition)

library("DESeq2")

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                        directory = directory,
                                        design= ~ condition)
ddsHTSeq
