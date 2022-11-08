# SARS-CoV-2 Spike Protein Post Translational Modification Landscape and Its Impact on Protein Structure and Function via Computational Prediction

### 1. Abstract

To elucidate the role of post-translational modifications (PTM) in SARS-CoV-2 spike protein’s folding and virulence, we generated a high-resolution map of 87 PTMs on spike protein from LC-MS/MS analysis, and then reconstituted its structure heterogeneity caused by PTMs. Nonetheless, Alphafold2, an accuracy artificial intelligence tool to perform protein structure prediction, relies solely on protein primary sequences and whereas the impact of PTM, which often modulate critical protein folding and functions, are much ignored. To overcome the challenge, we proposed the “mutagenesis” approach: in-silico site-directed amino-acid substitution to mimic the altered physicochemical properties of PTM sites, and then reconstituted the spike protein structure using Alphafold2. The proposed methods identify unique spike protein structures that contribute to understand the role of PTM in protein structure, a problem that Alphafold2 has yet to address. Furthermore, the ACE2 host factor interaction that target spike protein’s receptor binding region were also examined and evaluated for binding to the different PTM modified spike protein structures. Mechanistically, this study suggests that the post-translationally modified protein structural analyses via mutagenesis and deep learning exist. To summarize, the reconstructed spike protein structures show that specific PTMs can be used to modulate host factor binding, guide antibody design, and pave the way for new therapeutic targets. The code and supplementary materials are freely available at https://github.com/lltz2022/1.-SARS-CoV-2-spike-protein-PTM/edit/main/README.md


### 2. Workflow

 ![figure](https://user-images.githubusercontent.com/114552019/200271919-67b4f4d1-4c23-4ea6-99f7-f525fb9cdbd4.jpg)
Figure 1. The workflow of SARS-Cov-2 spike protein PTM landscape construction and Alphafold2 enabled structure prediction. (1) Data collection and LC-MS/MS data analysis. (2) PTM landscape construction. (3) Alphafold2 in-silico structure prediction. (4) Mutagenesis approach on amino-acid replacement. (5) Evaluation of PTM’s impact on protein structure compared to raw unmodified spike protein. (6) Simulation of ACE2 binding to spike protein’s RBD region with PTMs.

### 3. Data Access
1) The mass spectrometry rawfiles have been deposited in the MassIVE proteomicsdatabase under the accession number PXD023346.
2) The primary amino acid sequence of the SARS-CoV-2 alpha strain spike-in protein is in the 
[Data File](/PDBfiles/).


### 4. Usage
1) **Genarate high-resolution quantitative map of spike protein PTMs.**
We reanalyzed the 6 LC-MS/MS raw files using Proteome Discoverer 2.4 software against the SARS-CoV-2 spike protein sequence 


2) **In silico site-directed Mutagenesis to derive substituted primary amino acid sequences based on PTM **

rotein rotein 
Mutagenesis is a popular strategy to mimic protein modifications by replacing a PTM site with another amino acid based on similarities in the structure
