#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J algn_BWA_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user selma.bozorgpana.8230@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa
module load samtools
# my commands
cd $SNIC_TMP

bwa mem /home/selmbozo/genomeanalyses/canu/E_faecium.contigs.fasta /home/selmbozo/genomeanalyses/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz /home/selmbozo/genomeanalyses/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz > trim_paired_2.sam
samtools view -b trim_paired_2.sam > trim_paired_2.bam
samtools sort trim_paired_2.bam -o trim_paired_2.bam
samtools index trim_paired_2.bam trim_paired_2.bai

cp -r trim_paired_2.bam ~/genomeanalyses/bwa_result
cp -r trim_paired_2.bai ~/genomeanalyses/bwa_result
