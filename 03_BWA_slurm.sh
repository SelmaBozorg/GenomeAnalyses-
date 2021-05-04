#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J algn_BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user selma.bozorgpana.8230@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa
module load samtools
# my commands
cd $SNIC_TMP

bwa mem /home/selmbozo/genomeanalyses/canu/E_faecium.contigs.fasta /home/selmbozo/genomeanalyses/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_1.fastq.gz /home/selmbozo/genomeanalyses/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_2.fastq.gz > trim_Serum_paired_3.sam

samtools view -b trim_Serum_paired_3.sam > trim_Serum_paired_3.bam
samtools sort trim_Serum_paired_3.bam -o trim_Serum_paired_3.bam
samtools index trim_Serum_paired_3.bam trim_Serum_paired_3.bai

cp -r trim_Serum_paired_3.bam ~/genomeanalyses/bwa_result
cp -r trim_Serum_paired_3.bai ~/genomeanalyses/bwa_result
