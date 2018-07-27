#' get a cat fact
#'
#' @export
#' @param max_length (integer) limits the length of the facts returned
#' @param ... curl options passed on to `httr::GET`
#' @return a cat fact in a list
#' @examples \dontrun{
#' cat_fact()
#' cat_fact(40)
#' cat_fact(80)
#' cat_fact('asdf') # invalid max_length returns nothing
#' }
cat_fact <- function(max_length = NULL, ...) {
  args <- cp(list(max_length = max_length))
  res <- httr::GET("https://catfact.ninja/fact", query = args, ...)
  httr::stop_for_status(res)
  httr::content(res, as = "parsed", encoding = "UTF-8")
}

cp <- function(x) Filter(Negate(is.null), x)
