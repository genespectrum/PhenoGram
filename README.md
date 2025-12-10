# PhenoGram 
### This repository provides a clear and easy guide for generating a Genome-wide Mutation PhenoGram (chromosomal mutation map) in R.
## Overview
The PhenoGram displays mutation events across all human chromosomes, showing their chromosomal positions, mutation types, and gene labels in a visually informative genome context.
It is a visualization that maps genetic variants along chromosomes to highlight their distribution and characteristics. This type of plot is extremely useful in cancer genetics, rare disease studies, and large-scale mutation profiling, as it allows you to visualize the exact chromosomal location and type of each mutation.
## Dataset Requirements
Your input must be a CSV file containing mutation information with the following columns:
- chromosome – Chromosome name (e.g., chr1, chr2, chrX)
- position – Genomic coordinate of the mutation
- mutation_type – Type of mutation (e.g., Missense, Deletion, Amplification)
- gene – Gene associated with the mutation
## Step-by-Step Tutorial

1. Prepare Your Mutation Dataset

   Place your mutation data into a single CSV file where each row represents one mutation, including chromosome, position, gene name, and mutation type.

2. Install and Load Required Packages

   Install and load the karyoploteR, GenomicRanges, and readr packages so R can process genomic coordinates and generate the PhenoGram.

3. Import the Mutation CSV File
4. 
   Upload your mutation file into R and store it as a data frame, ensuring that chromosome names and positions are correctly recognized.

5. Assign Colors to Mutation Types

   Create a color scheme for each mutation type so they appear distinctly in the final plot, allowing easy identification of different variant classes.

6. Convert the Data into GRanges Format
 
   Transform your mutation table into a GRanges object, which is required for plotting genomic coordinates using karyoploteR.

7. Initialize the Karyoplot

   Create a full-genome karyoplot for hg38, defining margins, title, and layout for displaying mutation density and point markers.

8. Add Chromosome Labels

   Display chromosome names along the plot for clarity, usually in bold for better visibility.

9. Plot Mutation Density Across the Genome
  
   Add a density track that summarizes how many mutations occur in each genomic window (e.g., 1 Mb), giving an overview of mutation hotspots.

10. Plot Individual Mutation Points
  
    Add each mutation as a point on the chromosome, colored according to its mutation type and positioned at its genomic coordinate.

11. Add Gene Labels for Each Mutation
    
    Display gene names next to their mutation points for direct interpretation of affected genes.

12. Add a Mutation Type Legend

    Add a legend to the bottom right showing the color assigned to each mutation type, making the plot easy to interpret.

## Use Cases

1. Cancer Genomics and Tumor Mutation Profiling
   
   Phenograms help visualize the distribution of somatic mutations across chromosomes, revealing hotspots and unstable genomic regions. This allows quick identification of amplified oncogenes or deleted tumor suppressors.

2. Rare Disease Variant Identification

   They provide a genome-wide view of pathogenic variants detected through sequencing. This helps pinpoint disease-associated loci and prioritize candidate genes for diagnosis.

3. Comparative Genomics Across Samples or Groups

   Phenograms allow comparison of mutation patterns between conditions, treatment groups, or patient cohorts. Differences can indicate biomarkers, treatment response, or disease subtypes.

4. Functional Genomics and Gene Impact Visualization

   By labeling mutated genes on the genome map, Phenograms help link mutations to functional pathways. This aids in understanding biological consequences of genomic alterations.

5. Structural Variant and Copy Number Alteration Mapping

   Different mutation types (e.g., deletions, amplifications) can be color-coded to show structural variation. This provides insight into chromosomal rearrangements commonly seen in disease.


