#' classic R approaches to data analysis
#'
#' The functions here illustrate how an 'old-school' R user might approach
#' data management and analysis.
#'
#' @details There are two files. They are from a microarray experiment. The
#' first file, ALL-phenoData.csv describes the 128 samples. The second file,
#' ALL-expression.csv are the normalized experession values for 12k probesets
#' across 128 samples. The files originally came from sheets in excel, and were
#' exported from Excel using export-to-csv.
#'
#' @param pdata_file character(1) The path to the pheno data file
#' @param exprs_file chracter(1) The path to the expression file.
#'
#' @return A data.frame() containing samples as rows and phenotype data and
#'    expression data as columns.
#'
#' @importFrom utils read.csv
#'
#' @export
input_classic <- function(pdata_file, exprs_file){
    stopifnot(is_scalar_character(pdata_file))
    stopifnot(is_scalar_character(exprs_file))

    pdata <- read.csv(pdata_file, row.names=1, check.names=F)
    exprs <- read.csv(exprs_file, row.names=1, check.names=F)
    merge(pdata, t(exprs), by=0)
    ## return a data.frame
}
