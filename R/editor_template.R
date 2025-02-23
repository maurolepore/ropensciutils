#' Print the editor's template
#'
#' <https://devdevguide.netlify.app/editortemplate>
#'
#' @return Text.
#' @export
#'
#' @examples
#' editor_template()
editor_template <- function() {
  glue::glue(editor_template_impl())
}

editor_template_impl <- function() {
  "
  ### Checks:

  - [ ] **Documentation**: The package has sufficient documentation available online (README, pkgdown docs) to allow for an assessment of functionality and scope without installing the package. In particular,
      - [ ] Is the case for the package well made?
      - [ ] Is the reference index page clear (grouped by topic if necessary)?
      - [ ] Are vignettes readable, sufficiently detailed and not just perfunctory?
  - [ ] **Fit**: The package meets criteria for [fit](https://devguide.ropensci.org/policies.html#package-categories) and [overlap](https://devguide.ropensci.org/policies.html#overlap).
  - [ ] **Installation instructions:** Are installation instructions clear enough for human users?
  - [ ] **Tests**: If the package has some interactivity / HTTP / plot production etc. are the tests using [state-of-the-art tooling](https://devguide.ropensci.org/building.html#testing)?
  - [ ] **Contributing information**: Is the documentation for contribution clear enough e.g. tokens for tests, playgrounds?
  - [ ] **License:** The package has a CRAN or OSI accepted license.
  - [ ] **Project management**: Are the issue and PR trackers in a good shape, e.g. are there outstanding bugs, is it clear when feature requests are meant to be tackled?
  ---

  #### Comments

  ---

  "
}
