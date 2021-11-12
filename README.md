# Bayesian LCA to estimate test performance for bTB diagnostics in buffaloes

This project takes the test outcome of two diagnostic tests for bovine tuberculosis, the tuberculin skin test and a serological assay, from at least two different populations, and calculates the prevalence of the disease and the test performance, in terms of sensitivity (Se) and specificity (Sp) using a Bayesian latent class analysis based on the Hui-Walter model (Hui SL, Walter SD. Biometrics. 1980). The data has to satisfy the underlying assumptions:

(1) The assays need to be conditionally independent (meaning that the outcome of one test does not alter or influence the likely outcome of the other test). In this project, the tuberculin skin test measure the cell-mediated immune response, whereas the serological assay measures the humoral immune response. Since these are not related, they are considered conditionally independent.
(2) The tests need to be performed on at least two different populations, with differing prevalences of the disease.
(3) The tests need to perform the same in both populations, i.e. the Se and Sp should be robust and not be influenced by other factors that are likely to be different in the two study populations.

The data needs to be formatted as a data frame with at least 3 columns specifying the Park_ID, and the outcomes of TST_Result and TBELISA_Result.

The project is available from https://github.com/EMDLvdHeijden/good-enough-project-template.
The script is in the main folder "good-enough-project-template" and is titled "Script Bayesian HipMGR_v5.Rmd". This should be opened in R Studio and can be run from there. A randomly generated dataset can also be found in this folder ("Database_HiPMGR_randomized).

## Dependencies
R sessionInfo()
[1] "/Users/emdlvanderheijden/Documents/Work/Postdoc_VI _UU/Research/Courses/Writing_reproducible_code/good-enough-project-template"
R version 4.1.1 (2021-08-10)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Big Sur 10.16

Matrix products: default
LAPACK: /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRlapack.dylib

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] ggplot2_3.3.5 rjags_4-12    coda_0.19-4   knitr_1.36   

loaded via a namespace (and not attached):
 [1] magrittr_2.0.1   tidyselect_1.1.1 munsell_0.5.0    colorspace_2.0-2 lattice_0.20-45  R6_2.5.1         rlang_0.4.12     fansi_0.5.0     
 [9] dplyr_1.0.7      tools_4.1.1      grid_4.1.1       gtable_0.3.0     xfun_0.27        utf8_1.2.2       DBI_1.1.1        withr_2.4.2     
[17] ellipsis_0.3.2   assertthat_0.2.1 tibble_3.1.5     lifecycle_1.0.1  crayon_1.4.1     purrr_0.3.4      vctrs_0.3.8      glue_1.4.2      
[25] compiler_4.1.1   pillar_1.6.4     generics_0.1.1   scales_1.1.1     pkgconfig_2.0.3 

## Project organization
- PG = project-generated
- HW = human-writable
- RO = read only
```
.
├── .gitignore
├── CITATION.md
├── LICENSE.md
├── README.md
├── requirements.txt
├── bin                <- Compiled and external code, ignored by git (PG)
│   └── external       <- Any external source code, ignored by git (RO)
├── config             <- Configuration files (HW)
├── data               <- All project data, ignored by git
│   ├── processed      <- The final, canonical data sets for modeling. (PG)
│   ├── raw            <- The original, immutable data dump. (RO)
│   └── temp           <- Intermediate data that has been transformed. (PG)
├── docs               <- Documentation notebook for users (HW)
│   ├── manuscript     <- Manuscript source, e.g., LaTeX, Markdown, etc. (HW)
│   └── reports        <- Other project reports and notebooks (e.g. Jupyter, .Rmd) (HW)
├── results
│   ├── figures        <- Figures for the manuscript or reports (PG)
│   └── output         <- Other output for the manuscript or reports (PG)
└── src                <- Source code for this project (HW)

```


## License

This project is licensed under the terms of the [MIT License](/LICENSE.md)
