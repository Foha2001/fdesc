#' my descriptive package for data check and analysis
#'
#' @param prices the stock prices of companies
#'
#' @return the descriptive statistics and a file excel
#' @export
#' @importFrom fBasics skewness kurtosis
#' @importFrom stats median sd

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
return(descs)


}
