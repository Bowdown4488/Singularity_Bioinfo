echo "Starting Alignment"
echo "FASTA: $2"
echo "FASTQ: $3"
if [ $1 = "bowtie2" ]
then
echo "Bowtie 2 Was Chosen"
echo "bowtie2-build $2 hxb2_index"
bowtie2-build $2 hxb2_index
echo "bowtie2 --very-sensitive-local -x hxb2_index -U $3 -S samout.sam"
bowtie2 --very-sensitive-local -x hxb2_index -U $3 -S samout.sam
fi
if [ $1 = "last" ]
then
echo "Last Was Chosen"
echo "lastdb hivdb $2"
lastdb hivdb $2
echo "lastal hivdb -Q1 $3 > hiv_untrained.maf"
lastal hivdb -Q1 $3 > hiv_untrained.maf
echo "maf -convert sam hiv_untrained.maf > samout.sam"
maf-convert sam hiv_untrained.maf > samout.sam
fi
echo "samtools view -bT $2 samout.sam > samout.bam"
samtools view -bT $2 samout.sam > samout.bam
echo "samtools sort samout.bam -o samout.sorted.bam"
samtools sort samout.bam -o samout.sorted.bam
echo "Starting Variant Calling"
echo "lofreq call -f $2 -o varsoutput.vcf samout.sorted.bam"
./lofreq call -f $2 -o varsoutput.vcf samout.sorted.bam
