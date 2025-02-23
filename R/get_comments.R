#' Get an issue from ropensci/software-review
#'
#' @param number The issue number
#'
#' @return A list of the issue
#'
#' @export
#' @examplesIf FALSE
#' get_comments(688)
get_comments <- function(number) {
  gh::gh(glue::glue(
    "GET /repos/ropensci/software-review/issues/{number}/comments"
  ))
}
