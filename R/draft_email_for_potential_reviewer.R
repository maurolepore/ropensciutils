#' Draft email for a potential reviewer
#'
#' @param reviewer_name,package,author_name,package_does,package_repo_url,package_review_issue_url,why_reviewer_fits
#'   Character.
#' @return
#' @export
#'
#' @examples
#' draft_email_for_potential_reviewer()
draft_email_for_potential_reviewer <- function(
    reviewer_name = "Jane Smith",
    why_reviewer_fits = "of your experience developing cool things",
    package = "coolr",
    author_name = "John Doe",
    package_does = "does cool things in R",
    package_repo_url = "https://github.com/jhondoe/coolr",
    package_review_issue_url = "https://github.com/ropensci/software-review/issues/000") {
  glue::glue("rOpenSci: Invitation to review the package {package}

  Dear {reviewer_name},

  I hope this email finds you well. I'm writing to ask if you would be willing to review a package for rOpenSci. rOpenSci conducts peer review of R packages contributed to our collection in a manner similar to journals.

  The package {package}, by {author_name}, {package_does}. You can find its GitHub repo at  {package_repo_url} and its open-review issue at {package_review_issue_url}. If you accept, note that we ask reviewers to complete reviews in three weeks. (We've found it takes a similar amount of time to review a package as an academic paper.)

  Our [reviewers guide] details what we look for in a package review, and includes links to example reviews. Our standards are detailed in our [packaging guide], and we provide a reviewer [template] for you to use. Please make sure you do not have a [conflict of interest] preventing you from reviewing this package. If you have questions or feedback, feel free to ask me or post to the [rOpenSci forum].

  Are you able to review? I think you would be a great reviewer because {why_reviewer_fits}. If I don't hear from you within a week, I will assume you are unavailable.

  Thank you for your time.

  Sincerely,
  Mauro Lepore

  [reviewers guide]: https://devguide.ropensci.org/reviewerguide.html
  [packaging guide]: https://devguide.ropensci.org/building.html
  [template]: https://devguide.ropensci.org/reviewtemplate.html
  [conflict of interest]: https://devguide.ropensci.org/policies.html#coi
  [rOpenSci forum]: https://discuss.ropensci.org/")
}
