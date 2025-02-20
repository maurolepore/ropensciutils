
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ropensciutils

<!-- badges: start -->
<!-- badges: end -->

The goal of ropensciutils is to collect my personal utilities for
ropensci.

## Installation

You can install the development version of ropensciutils from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("maurolepore/ropensciutils")
```

## Example

``` r
library(ropensciutils)

editor_template()
#> ### Editor checks:
#> 
#> - [ ] **Documentation**: The package has sufficient documentation available online (README, pkgdown docs) to allow for an assessment of functionality and scope without installing the package. In particular,
#>     - [ ] Is the case for the package well made?
#>     - [ ] Is the reference index page clear (grouped by topic if necessary)?
#>     - [ ] Are vignettes readable, sufficiently detailed and not just perfunctory?
#> - [ ] **Fit**: The package meets criteria for [fit](https://devguide.ropensci.org/policies.html#package-categories) and [overlap](https://devguide.ropensci.org/policies.html#overlap).
#> - [ ] **Installation instructions:** Are installation instructions clear enough for human users?
#> - [ ] **Tests**: If the package has some interactivity / HTTP / plot production etc. are the tests using [state-of-the-art tooling](https://devguide.ropensci.org/building.html#testing)?
#> - [ ] **Contributing information**: Is the documentation for contribution clear enough e.g. tokens for tests, playgrounds?
#> - [ ] **License:** The package has a CRAN or OSI accepted license.
#> - [ ] **Project management**: Are the issue and PR trackers in a good shape, e.g. are there outstanding bugs, is it clear when feature requests are meant to be tackled?
#> ---
#> 
#> #### Editor comments
#> 
#> ---

formals(slack_editors)
#> $package_review_issue_url
#> [1] "https://github.com/ropensci/software-review/issues/000"
#> 
#> $package_repo_url
#> [1] "https://github.com/jhondoe/coolr"
#> 
#> $type
#> [1] "standard"
#> 
#> $category
#> [1] "category 'workflow automation'"
#> 
#> $package
#> [1] "coolr"
#> 
#> $package_does
#> [1] "does cool things in R"
#> 
#> $package_check_shows
#> [1] "this package is in top shape"
#> 
#> $in_scope_because
#> [1] "it streamlines necessary processes"
#> 
#> $my_checks_show
#> [1] "the package is awesome"
#> 
#> $my_checks_url
#> [1] "https://github.com/ropensci/software-review/issues/000#issuecomment-0000000000"
#> 
#> $category_description
#> [1] "Tools that automate and link together workflows, such as build systems and tools to manage continuous integration. Does not include general tools for literate programming. (e.g., R markdown extensions not under the previous topics). (Example: drake)"
```

``` r
# Using `#| comment: ""`
slack_editors()
Dear @editors we have a new standard submission under the category 'workflow automation' (description below).

'coolr' does cool things in R. I believe it's in scope because it streamlines necessary processes.

'pkgcheck' shows this package is in top shape. And my own quick preliminary checks suggest the package is awesome (https://github.com/ropensci/software-review/issues/000#issuecomment-0000000000).

If you can take it please double-check it's in scope and of acceptable quality and feel free to disagree with my quick preliminary checks. Then please go ahead and assign yourself with `@ropensci-review-bot assign @username as editor`.

Else I'll come back here after a few days.

---

- Issue: https://github.com/ropensci/software-review/issues/000
- Repo: https://github.com/jhondoe/coolr

> category 'workflow automation': Tools that automate and link together workflows, such as build systems and tools to manage continuous integration. Does not include general tools for literate programming. (e.g., R markdown extensions not under the previous topics). (Example: drake) -- https://devguide.ropensci.org/softwarereview_policies.html#aims-and-scope
```

Includes apps

``` r
if (interactive()) app_email_reviewer()
```
