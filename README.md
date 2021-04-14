# GenomeAnalyses-
In this project we will focus on What genes are significant for growing of the Gram-positive bacterium Enterococcus faecium which is a commensal of the human gastrointestinal tract and a frequent cause of bloodstream infections in hospitalized patients? 
 
The main analyses included in the original article are listed in below which will be used in this project as well. 
● Genome assembly on E. faecium
● Differential gene expression of E. faecium on human serum against rich medium
using RNA-Seq data.
● Identification of genes that contribute to survival and growth in human serum using
Tn-Seq data.
- The RNA-Seq_BH will be quality checked using FastQ software. A fast softwear. 
- The reads that will be trimmed are the RNA-Seq_BH reads and the PacBio reads will be trimmed automatically by Canu. 

Analyses - Softwares - Running time will be listed below. 
1. Reads preprocessing --> Trimmomatic --> 50 min per file (1 core)
2. DNA assembly --> 1. Canu ((short reads(extra analysis) + long reads) ~ (4,5 h (1 core)) will use 4 core.
3. Assembly evaluation --> Quasr --> 15 min (1 core) or MUMmerplot < 5 min (1 core)
4. Annotation --> Prokka --> 5 min (1 core)
5. Aligner --> BWA --> (paired-end reads) 30 min (1 core) 
6. Differential Expression --> Htseq --> 1. (paired-end reads) ~ 2-7 h (1 core) and 2. (single reads) < 10 min (1 core) 

Different sequences will be used from short to long ones. The sequences will need a lot of space therfore the analyses will be done on UPPMAX and saved there as well. 
All the analyses should be finished before 8/5-2021 so the analyze of the data can start. 
The data will be organized in GitHub, excel, LibreOffice and google Sheets will be used for different data and organizing them. It is important to give these data and files good names to make it easier to recognizing them later on. 
