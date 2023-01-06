# SARS-CoV-2 Spike Protein Post Translational Modification Landscape and Its Impact on Protein Structure and Function via Computational Prediction

### 1. Abstract

To elucidate the role of post-translational modifications (PTM) in SARS-CoV-2 spike protein’s structure and virulence, we generated a high-resolution map of 87 PTMs using liquid chromatography with tandem mass spectrometry (LC-MS/MS) data on extracted spike protein from the SARS-CoV-2 virions, and then reconstituted its structure heterogeneity caused by PTMs. Nonetheless, Alphafold2, a high-accuracy artificial intelligence tool to perform protein structure prediction, relies solely on primary amino acid sequence, whereas the impact of PTM, which often modulate critical protein structure and function, are much ignored. To overcome this challenge, we proposed the mutagenesis approach: in-silico, site-directed amino-acid substitution to mimic the influence of PTMs on protein structure due to altered physicochemical properties in modified amino acids, and then reconstituted the spike protein’s structure from the substituted sequences by Alphafold2. For the first time, the proposed method revealed predicted protein structures resulting from PTMs, a problem that Alphafold2 has yet to address. As an example, we performed computational analyses of the interaction of post-translationally modified spike protein with its host factors such as ACE2 to illuminate the binding affinity. Mechanistically, this study suggested that the post-translationally modified protein structural analysis via mutagenesis and deep learning exist. To summarize, the reconstructed spike protein structures showed that specific PTMs can be used to modulate host factor binding, guide antibody design, and pave the way for new therapeutic targets. The code and supplementary materials are freely available at https://github.com/LTZHKUSTGZ/SARS-CoV-2-spike-protein-PTM

### 2. Workflow

 ![figure](https://user-images.githubusercontent.com/114552019/200271919-67b4f4d1-4c23-4ea6-99f7-f525fb9cdbd4.jpg)
Figure 1. The workflow of SARS-Cov-2 spike protein PTM landscape construction and Alphafold2 enabled structure prediction. (1) Data collection and LC-MS/MS data analysis. (2) PTM landscape construction. (3) Alphafold2 in-silico structure prediction. (4) Mutagenesis approach on amino-acid replacement. (5) Evaluation of PTM’s impact on protein structure compared to raw unmodified spike protein. (6) Simulation of ACE2 binding to spike protein’s RBD region with PTMs.

### 3. Data Access
1) The mass spectrometry rawfiles have been deposited in the MassIVE proteomicsdatabase under the accession number PXD023346.
2) The primary amino acid sequence of the SARS-CoV-2 alpha strain spike-in protein is in the [Data](/data).


### 4. Usage
1) **Construction of the high-resolution quantitative map of spike protein PTMs.** <br>
We reanalyzed the 6 LC-MS/MS raw files using Proteome Discoverer 2.4 software against the SARS-CoV-2 spike protein sequence. And the PTM files are in the [Results](/Results).


2) **In silico site-directed mutagenesis to derive substituted amino acid sequences on PTM sites.** <br>
Mutagenesis is a popular strategy to mimic protein modifications by replacing a PTM site with another amino acid based on similarities in the structure

3) **Computational prediction of protein structure from amino acid sequences using Alphafold2.**<br>
The modified primary amino acid sequences of the spike protein by mutagenesis substitution rule were submitted to AlphaFold2 v2.0 to analyze the landscapes and impacts of PTM on the spike protein structure.

4) **Evaluation of the impact of PTMs by aligning predicted spike protein structures influenced by different PTMs.**<br>
We comprehensively evaluated the impacts of PTMs on spike protein structure and demonstrated the capability of this method to review key structure differences.

5) **Computational prediction of the interaction affinity between the spike protein receptor-binding domain and host factor receptor.**<br>
We predict the binding affinity in biological complexes and identify the specific amino acids interacting between the proteins from each generated 3D structure coordinates


6) **The codes are in the [Code](/code).**


### 5. Results

1) The PDB files are in the [Results](/Results/PDBfiles/).

