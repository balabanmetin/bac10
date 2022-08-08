## 10 Bacteria datasets used in Research Paper "Genome wide alignment-free phylogenetic distance estimation under a no strand bias model".

We created a dataset consisting of 10 clades of microbial species subsampled from the Web of Life (WoL; Zhu et al., 2019) ASTRAL tree of 10575 Bacteria and Archaea taxa. We started by finding all the clades with 30–50 leaves and 0.2–0.7 diameter (the maximum pairwise tree distance between any pair). We then selected the top 25 clades with the highest support and for each clade, computed an all-pairwise distance matrix using Skmer (sketch size 10 million), inferred a phylogenetic tree using FastME 2.0, and computed the RF distance between the WoL ASTRAL reference tree and the inferred tree. We then selected nine clades with the lowest RF distance, and these clades had 32–46 species and RF distances between 0.16 and 0.42. As none of the nine selected clades had any missing data in their distance matrix, we also curated a challenging subtree with 86 taxa from the Erysipelotrichaceae family from the WoL tree that contained 114 missing data entries in its distance matrix (RF distance: 0.43) computed using Skmer (set 10).

In each set (set1-set10), you can find genome sequences, distance matrices computed using various methods, and phylogenetic trees inferred from those distance matrices.




