# Methods
## The input data for this assignment is a subset of an RNA experiment used to study immune response and symbiosis in sea anemones (Aiptasia pallida). There were four treatment groups and six replicates per treatment group. Paired-end RNAseq reads were quality trimmed using Trimmomatic according to a Phred quality score, with a minimum quality of 20 for trimming the start and end of reads, and a total minimum length of 36. Trimmomatic also removed any adapter sequences from the reads. GMAP was used to build a database from the Aiptasia genome and the reads were subsequently aligned to the database with GSNAP. Alignments were then sorted and indexed with samtools.

# References
### Bolger, A. M., Lohse, M., & Usadel, B. (2014). Trimmomatic: a flexible trimmer for Illumina sequence data. Bioinformatics (Oxford, England), 30(15), 2114–2120. https://doi.org/10.1093/bioinformatics/btu170

### Etherington, G. J., Ramirez-Gonzalez, R. H., & MacLean, D. (2015). bio-samtools 2: a package for analysis and visualization of sequence and alignment data with SAMtools in Ruby. Bioinformatics, 31(15), 2565–2567. https://doi.org/10.1093/bioinformatics/btv178

### Wu, T. D., Reeder, J., Lawrence, M., Becker, G., & Brauer, M. J. (n.d.). GMAP and GSNAP for Genomic Sequence Alignment: Enhancements to Speed, Accuracy, and Functionality. Statistical Genomics, 283–334. https://doi.org/10.1007/978-1-4939-3578-9_15

