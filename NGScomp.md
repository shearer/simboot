Simultaneous comparisons of diversity indices estimated from metagenomic data
==============================================================================

The following "GlobalPatterns" data set is from the [phyloseq package](http://joey711.github.io/phyloseq/) on Bioconductor. This packages allows the import of OTU-tables from qiime, mothur and other software packages for sequence data. Once the data is imported into R, it is stored in a phyloseq object, which is a specialized system of S4-classes. 

First, we have to install phyloseq with dependencies from Bioconductor if not already installed.


```r
# source('http://bioconductor.org/biocLite.R') biocLite('phyloseq')
```


Next, we have to load the phyloseq packages to get the GlobalPatterns data set. For pre-processing steps of the sequence data, see the phyloseq vignettes.


```r
library(phyloseq)
```

```
## Loading required package: ade4
## 
## Attaching package: 'ade4'
## 
## Das folgende Objekt ist maskiert from 'package:base':
## 
## within
## 
## Loading required package: picante Loading required package: ape Loading
## required package: vegan Loading required package: permute This is vegan
## 2.0-8
## 
## Attaching package: 'vegan'
## 
## Das folgende Objekt ist maskiert from 'package:ade4':
## 
## cca
## 
## Loading required package: nlme
```

```
## Warning: the specification for S3 class "AsIs" in package 'BiocGenerics'
## seems equivalent to one from package 'RJSONIO' and is not turning on
## duplicate class definitions for this class Warning: the specification for
## S3 class "connection" in package 'BiocGenerics' seems equivalent to one
## from package 'RJSONIO' and is not turning on duplicate class definitions
## for this class Warning: the specification for S3 class "file" in package
## 'BiocGenerics' seems equivalent to one from package 'RJSONIO' and is not
## turning on duplicate class definitions for this class Warning: the
## specification for S3 class "pipe" in package 'BiocGenerics' seems
## equivalent to one from package 'RJSONIO' and is not turning on duplicate
## class definitions for this class Warning: the specification for S3 class
## "textConnection" in package 'BiocGenerics' seems equivalent to one from
## package 'RJSONIO' and is not turning on duplicate class definitions for
## this class
```

```r
data(GlobalPatterns)
GP <- prune_species(speciesSums(GlobalPatterns) > 0, GlobalPatterns)
```


Phyloseq offers several functions to access variables in the object. 


```r
sample_variables(GlobalPatterns)
```

```
## [1] "X.SampleID"               "Primer"                  
## [3] "Final_Barcode"            "Barcode_truncated_plus_T"
## [5] "Barcode_full_length"      "SampleType"              
## [7] "Description"
```



```r
plot_richness(GP, x = "SampleType", color = "SampleType", shsi = TRUE)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 





