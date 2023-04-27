#' My Descriptive Package for Data Check and Analysis
#'
#' @param prices is the stock prices of firms
#'
#' @return the descriptive statistics and a file excel
#' @export
#' @importFrom fBasics skewness kurtosis
#' @importFrom stats median sd

fdesc <- function(prices) {
r <-  diff(log(prices))
fdescs <- do.call(data.frame,
                list(mean = apply(r, 2, mean,na.rm=TRUE),
                     sd = apply(r, 2, sd,na.rm=TRUE),
                     median = apply(r, 2, median,na.rm=TRUE),
                     min = apply(r, 2, min,na.rm=TRUE),
                     max = apply(r, 2, max,na.rm=TRUE),
                     skew = apply(r, 2, skewness,na.rm = TRUE),
                     kurt = apply(r,2,kurtosis, na.rm=TRUE)))

fdescs <- cbind(rownames(descs),descs)
return(fdescs)

}
