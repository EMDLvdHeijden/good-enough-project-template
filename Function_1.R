# Create a function to convert fpkm to tpm with documentation
library(docstring)

fpkmtotpm <- function(x){
  #' @title Convert FPKM to TPM.
  #' @description This function calculates the TPM
  #' from the FPKM of a sample.
  #' @param x Input the FPKM.
  #' @return Returns the TPM.
  
  exp(log(x) - log(sum(x)) + log(1e6))
}
