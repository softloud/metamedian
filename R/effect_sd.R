#' Calculate the standard deviation of all studies' effects.
#'
#' Estimate the standard deviation of the effect, depending on how that effect is reported
#' (median or mean).
#'
#' @param centre A sample mean or a median.
#' @param spread The associated measure of spread for the sample mean: either
#' a sample sd, sample interquartile range, or sample range.
#' @param n The sample size.
#' @param centre_type Specify if the center is "mean" or "median".
#' @param spread_type Specify if the spread is reported as "sd", "iqr", or "range".
#'
#' @export

effect_sd <- function(centre,
                      spread,
                      n,
                      centre_type = "mean",
                      spread_type = "sd") {
  if (centre_type == "mean" & spread_type == "sd") {
    return(sd = spread)
  } else if (centre_type == "median") {
    if (spread_type == "iqr") {
      sn_arg <- 3 / 4
    } else if (spread_type == "range") {
      sn_arg <- (n - 1 / 2) / n
    }  else {
      stop("Check that your spread_type is either \"iqr\" or \"range\".")
    }

    # Estimate mu.
    mu <- log(centre)

    # Estimate sigma.
    sigma <-
      1 / qnorm(sn_arg) *
      log(
        1 / 2 *
          (spread * exp(-mu) + sqrt(spread^2 * exp(-2 * mu) + 4))
      )

    return(
      1 / (2 * sqrt(n) * dlnorm(centre, meanlog = mu, sdlog = sigma))
    )
  } else {
    stop("Check that your centre_type is of the form \"mean\" or \"median\".")
  }
}
