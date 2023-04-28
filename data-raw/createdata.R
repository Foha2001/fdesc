library(quantmod)
library(xts)
library(zoo)
w_indice <- c("^GSPC","000001.SS","^N225")

start_date <- "2022-12-01"
end_date <- "2023-03-08"
envt<- new.env()
getSymbols(w_indice,env=envt,from=start_date, to=end_date)
data <- do.call(merge, eapply(envt, Cl))
usethis::use_data(data, compress="xz")
