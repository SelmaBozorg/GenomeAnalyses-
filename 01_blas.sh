#!/bin/bash -l
#SBATCH -A g2021012 -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00 --qos=short
#SBATCH -J Blast_L_monocyt_vs_E745
#SBATCH -o Blast_L_monocytogenes_vs_E745.log
#SBATCH --mail-user selma.bozorgpana.8230@student.uu.se
#SBATCH --mail-type=ALL

module load bioinfo-tools
module load blast/2.11.0+


cat $0
query=/home/selmbozo/genomeanalyses/refrence_data/GCF_001750885.1_ASM175088v1_genomic.fna
subject=/home/selmbozo/genomeanalyses/canu/E_faecium.contigs.fasta
#id="Megablast_E745_allDNAPilon_apr2021"

#E=1e-20

#Megablast option
#blastn -db nt -query $query -num_threads 4  -task megablast  -evalue $E -outfmt '6 qseqid qlen staxids bitscore std slen sscinames sskingdoms stitle' -out ${id}.tab

blastn -query $query -subject $subject -outfmt '6' > blast_align_EfaeciumE745_L_monocytogenes.fasta
