#' Samples Simulated for this Analysis
#'
#' A tibble of single-study simulation data.
#'
#' @format A tibble with two variables:
#' \describe{
#'   \item{rdist}{Distribution given in a form interpretable by R.}
#'   \item{rpars}{List of parameters particular to each distribution.}
#'   \item{n}{Sample sizes.}
#'   \item{true_median}{True median of the given density (from rdist and rpars).}
#'   \item{rpar1_adj}{Adjustment value for first parameter (for true difference in arms).}
#'   \item{rpar1}{First value of rpars.}
#'   \item{rpar2}{Second value of rpars.}
#'   \item{sample_stats_1}{Sample summary statistics generated from the arm 1 parameters.}
#'   \item{sample_stats_2}{Sample summary statistics generated from the arm 2 parameters.}
#' }
"ss_data"
