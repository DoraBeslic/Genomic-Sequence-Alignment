## Methods
The input data for this assignment was a subset of an RNA experiment used to study immune response and symbiosis in sea anemones (Aiptasia pallida). There were four treatment groups and six replicates per treatment group. Paired-end RNAseq reads were quality trimmed using Trimmomatic according to a Phred quality score, with a minimum quality of 20 for trimming the start and end of reads and a total minimum length of 36. Trimmomatic also removed any adapter sequences from the reads. GMAP was used to build a database from the Aiptasia genome and the reads (in fastq format) were subsequently aligned to the database with GSNAP and outputted as SAM files. Using SAMtools, alignments were sorted and outputted as BAM files, then indexed and ouputted as BAI files.

## References
Bolger, A. M., Lohse, M., & Usadel, B. (2014). Trimmomatic: a flexible trimmer for Illumina sequence data. Bioinformatics (Oxford, England), 30(15), 2114–2120. https://doi.org/10.1093/bioinformatics/btu170 

Li, H., Handsaker, B., Wysoker, A., Fennell, T., Ruan, J., Homer, N., Marth, G., Abecasis, G., & Durbin, R. (2009). The Sequence Alignment/Map format and SAMtools. Bioinformatics, 25(16), 2078–2079. https://doi.org/10.1093/bioinformatics/btp352  

Wu, T. D., Reeder, J., Lawrence, M., Becker, G., & Brauer, M. J. (n.d.). GMAP and GSNAP for Genomic Sequence Alignment: Enhancements to Speed, Accuracy, and Functionality. Statistical Genomics, 283–334. https://doi.org/10.1007/978-1-4939-3578-9_15

