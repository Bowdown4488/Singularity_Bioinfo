# Singularity_Bioinfo

Included in this version of the container is the Alignment tools (Bowtie2 and Last) and as of now
only lofreq is currently functioning in this container for Variant Calling.

User Input Example:
<name> = bioinfo
<bowtie2> = bowtie2
<last> = last

How to install singularity:
```
sudo apt-get install singularity-container
```
How to make singularity container:
```
sudo singularity build <name>.simg Singular.recipe
```
How to run container (put input files in the same folder):
```
singularity run <name>.simg <bowtie2/last> <fasta> <fastq>
```

