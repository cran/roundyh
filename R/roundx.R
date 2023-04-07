#' A rounding function
#'
#' @param n a number to round
#' @param dp decimal place to round to
#'
#' @return rounded number
#' @export
#'
#' @examples
#' roundx(10.111, 1)

roundx <- function(n, dp) {
  x <- 10^dp * abs(n)
  x <- sqrt(.Machine$double.eps) + (x + 1 / 2)
  x <- trunc(x)
  x <- x / 10^dp
  return(x * sign(n))
}

#' Applying the rounding function to all numeric values of dataframe while excluding characters
#'
#' @param df a dataframe
#' @param dp decimal place to round to
#'
#' @return a dataframe
#' @export
#'
#' @examples
#' roundx_df(data.frame(c(1.111, 1, 1.11), c(1, 1, 1), c("a", "b", "c")), 1)

roundx_df <- function(df, dp) {
  num_check <- vapply(df, is.numeric, FUN.VALUE = logical(1))
  df[, num_check] <- roundx(df[, num_check], dp = dp)
  return(df)
}
