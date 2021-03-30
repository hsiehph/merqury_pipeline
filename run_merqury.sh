# example of running merqury where h1.fasta and h2.fasta are the 2 assembled haplotypes
# and all.meryl is the meryl output after running meryl on all the illumina reads.
# (DG, July 2020)

module purge; module load modules modules-init modules-gs/prod modules-eichler/prod
module load samtools/1.9
module load bedtools/2.28.0
module load igv/2.8.2 igvtools/2.8.2
module load pcre2/10.35 R/4.0.0
module load meryl/1.0
module load merqury/1.1


export MERQURY=/net/eichler/vol26/7200/software/modules-sw/merqury/1.1/Linux/CentOS7/x86_64/merqury-1.1
$MERQURY/merqury.sh all.meryl Mhudiblu_PPA.pri.fa merqury_out
