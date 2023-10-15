#' Create table of Descriptive statistics
#'
#' @param x is an xts data data with multiple variables
#'
#' @return the descriptive statistics for the log return
#' @export
#' @importFrom fBasics skewness kurtosis
#' @importFrom stats median sd
#' @importFrom stats na.omit

Rdesc <- function(x) {
r <-  diff(log(x))
r<- na.omit(r)
Rdesc <- do.call(data.frame,
                list(mean = apply(r, 2, mean,na.rm=TRUE),
                     sd = apply(r, 2, sd,na.rm=TRUE),
                     median = apply(r, 2, median,na.rm=TRUE),
                     min = apply(r, 2, min,na.rm=TRUE),
                     max = apply(r, 2, max,na.rm=TRUE),
                     skew = apply(r, 2, skewness,na.rm = TRUE),
                     kurt = apply(r,2,kurtosis, na.rm=TRUE)))

return(Rdesc)
}


#' Create table of Descriptive statistics
#'
#' @param x is an xts data data with multiple variables
#'
#' @return the descriptive statistics for the raw data
#' @export
#' @importFrom fBasics skewness kurtosis
#' @importFrom stats median sd
#' @importFrom stats na.omit

desc <- function(x) {

  x<- na.omit(x)
  desc <- do.call(data.frame,
                  list(mean = apply(x, 2, mean,na.rm=TRUE),
                       sd = apply(x, 2, sd,na.rm=TRUE),
                       median = apply(x, 2, median,na.rm=TRUE),
                       min = apply(x, 2, min,na.rm=TRUE),
                       max = apply(x, 2, max,na.rm=TRUE),
                       skew = apply(x, 2, skewness,na.rm = TRUE),
                       kurt = apply(x,2,kurtosis, na.rm=TRUE)))

  return(desc)
}


#' This function is used to export to xls
#'
#' @param y the describtive statistics output from \code{\link{desc}} or \code{\link{Rdesc}} function
#'
#' @return Excel file output with name descstatistics in the working directory
#' @export
#' @importFrom writexl write_xlsx
#'
export <- function(y) {
  y <- cbind(rownames(y),y)
  write_xlsx(y,"descstatistics.xlsx")

}



