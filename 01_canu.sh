#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J Assambly_canu
#SBATCH --mail-type=ALL
#SBATCH --mail-user selma.bozorgpana.8230@student.uu.se
# Load modules
module load bioinfo-tools
module load canu
# my commands
canu -p E_faecium -d canu genomeSize=3m corThreads=4 -pacbio ~/genomeanalyses/raw_data/genomics_data/PacBio/m13102*

