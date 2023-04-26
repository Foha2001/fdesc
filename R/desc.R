# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' my descriptive package for data check and analysis
#'
#' @param prices the stock prices of companies
#'
#' @return the descriptive statistics and a file excel
#' @export
#'
#' @examples
desc <- function(prices) {
r <-  diff(log(prices))
descs <- do.call(data.frame,
                list(mean = apply(r, 2, mean,na.rm=TRUE),
                     sd = apply(r, 2, sd,na.rm=TRUE),
                     median = apply(r, 2, median,na.rm=TRUE),
                     min = apply(r, 2, min,na.rm=TRUE),
                     max = apply(r, 2, max,na.rm=TRUE),
                     skew = apply(r, 2, skewness,na.rm = TRUE),
                     kurt = apply(r,2,kurtosis, na.rm=TRUE)))

descs <- cbind(rownames(descs),descs)
write_xlsx(descs,"descstatistics.xlsx")

}
#
# R_data <- diff(log(data))
# library(fBasics)
# library(moments)
# desc <- do.call(data.frame,
#                 list(mean = apply(R_data, 2, mean,na.rm=TRUE),
#                      sd = apply(R_data, 2, sd,na.rm=TRUE),
#                      median = apply(R_data, 2, median,na.rm=TRUE),
#                      min = apply(R_data, 2, min,na.rm=TRUE),
#                      max = apply(R_data, 2, max,na.rm=TRUE),
#                      skew = apply(R_data, 2, skewness,na.rm = TRUE),
#                      kurt = apply(R_data,2,kurtosis, na.rm=TRUE)))
# desc
# desc <- cbind(rownames(desc),desc)
# library(writexl)
# write_xlsx(desc,"descstatistics1.xlsx")
#
#
