# Singularity_Bioinfo

Included in this version of the container is the Alignment tools (Bowtie2 and Last) and as of now
only Lofreq is the only currently functioning in the version of this container for Variant Calling.

After cloning this repository go the folder where the files are and follow the steps bellow: 

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

