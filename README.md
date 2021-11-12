[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/EMDLvdHeijden/good-enough-project-template/master)

# Bayesian LCA to estimate test performance for bTB diagnostics in buffaloes

This project takes the test outcome of two diagnostic tests for bovine tuberculosis, the tuberculin skin test and a serological assay, from at least two different populations, and calculates the prevalence of the disease and the test performance, in terms of sensitivity (Se) and specificity (Sp) using a Bayesian latent class analysis based on the Hui-Walter model (Hui SL, Walter SD. Biometrics. 1980). The data has to satisfy the underlying assumptions:

(1) The assays need to be conditionally independent (meaning that the outcome of one test does not alter or influence the likely outcome of the other test). In this project, the tuberculin skin test measure the cell-mediated immune response, whereas the serological assay measures the humoral immune response. Since these are not related, they are considered conditionally independent.
(2) The tests need to be performed on at least two different populations, with differing prevalences of the disease.
(3) The tests need to perform the same in both populations, i.e. the Se and Sp should be robust and not be influenced by other factors that are likely to be different in the two study populations.

The data needs to be formatted as a data frame with at least 3 columns specifying the Park_ID, and the outcomes of TST_Result and TBELISA_Result.

The project is available from https://github.com/EMDLvdHeijden/good-enough-project-template.
The script is in the main folder "good-enough-project-template" and is titled "Script Bayesian HipMGR_v5.Rmd". This should be opened in R Studio and can be run from there. A randomly generated dataset can also be found in this folder ("Database_HiPMGR_randomized).

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
