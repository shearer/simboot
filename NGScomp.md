Title
========================================================

This is an R Markdown document. Markdown is a simple formatting syntax for authoring web pages (click the **MD** toolbar button for help on Markdown).

When you click the **Knit HTML** button a web page will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


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

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 




