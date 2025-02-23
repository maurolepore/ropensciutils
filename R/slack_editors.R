#' Generate email to editors for a new package submission
#'
#' @param package_review_issue_url URL of the package review issue.
#' @param package_repo_url URL of the package repository.
#' @param type Type of submission (e.g., "standard").
#' @param category Category of the package (e.g., "workflow automation").
#' @param package Name of the package.
#' @param package_does What the package does.
#' @param package_check_shows Summary of the package check results.
#' @param in_scope_because Reason why the package is in scope.
#' @param my_checks_show Summary of the preliminary checks performed.
#' @param my_checks_url URL to the detailed preliminary checks.
#' @param category_description Description of the category.
#'
#' @return Character. The generated email content.
#'
#' @export
#'
#' @examples
#' slack_editors()
#' tool_slack_editors()
#' prompt_slack_editors()
slack_editors <- function(
  package_review_issue_url = "https://github.com/ropensci/software-review/issues/000",
  package_repo_url = "https://github.com/jhondoe/coolr",
  type = "standard",
  category = "category 'workflow automation'",
  package = "coolr",
  package_does = "does cool things in R",
  package_check_shows = "this package is in top shape",
  in_scope_because = "it streamlines necessary processes",
  my_checks_show = "the package is awesome",
  my_checks_url = "https://github.com/ropensci/software-review/issues/000#issuecomment-0000000000",
  category_description = "Tools that automate and link together workflows, such as build systems and tools to manage continuous integration. Does not include general tools for literate programming. (e.g., R markdown extensions not under the previous topics). (Example: drake)"
) {
  glue::glue(
    "
Dear @editors we have a new {type} submission under the {category} (description below).

'{package}' {package_does}. I believe it's in scope because {in_scope_because}.

'pkgcheck' shows {package_check_shows}. And my own quick [preliminary checks](my_checks_url) suggest {my_checks_show}.

If you can take it please double-check it's in scope and of acceptable quality and feel free to disagree with my quick preliminary checks. Then please go ahead and assign yourself with `@ropensci-review-bot assign @username as editor`.

Else I'll come back here after a few days.

---

- Issue: {package_review_issue_url}
- Repo: {package_repo_url}

> {category}: {category_description} -- https://devguide.ropensci.org/softwarereview_policies.html#aims-and-scope
"
  )
}

#' @export
#' @rdname slack_editors
app_slack_editors <- function() {
  ui <- fluidPage(
    titlePanel("Slack Editors"),
    sidebarLayout(
      sidebarPanel(
        textInput(
          "package_review_issue_url",
          "Package Review Issue URL",
          value = "https://github.com/ropensci/software-review/issues/000"
        ),
        textInput(
          "package_repo_url",
          "Package Repo URL",
          value = "https://github.com/jhondoe/coolr"
        ),
        textInput("type", "Type", value = "standard"),
        textInput(
          "category",
          "Category",
          value = "category 'workflow automation'"
        ),
        textInput("package", "Package", value = "coolr"),
        textInput(
          "package_does",
          "Package Does",
          value = "does cool things in R"
        ),
        textInput(
          "package_check_shows",
          "Package Check Shows",
          value = "this package is in top shape"
        ),
        textInput(
          "in_scope_because",
          "In Scope Because",
          value = "it streamlines necessary processes"
        ),
        textInput(
          "my_checks_show",
          "My Checks Show",
          value = "the package is awesome"
        ),
        textInput(
          "my_checks_url",
          "My Checks URL",
          value = "https://github.com/ropensci/software-review/issues/000#issuecomment-0000000000"
        ),
        textInput(
          "category_description",
          "Category Description",
          value = "Tools that automate and link together workflows, such as build systems and tools to manage continuous integration. Does not include general tools for literate programming. (e.g., R markdown extensions not under the previous topics). (Example: drake)"
        )
      ),
      mainPanel(
        verbatimTextOutput("output")
      )
    )
  )

  server <- function(input, output) {
    output$output <- renderPrint({
      slack_editors(
        package_review_issue_url = input$package_review_issue_url,
        package_repo_url = input$package_repo_url,
        type = input$type,
        category = input$category,
        package = input$package,
        package_does = input$package_does,
        package_check_shows = input$package_check_shows,
        in_scope_because = input$in_scope_because,
        my_checks_show = input$my_checks_show,
        my_checks_url = input$my_checks_url,
        category_description = input$category_description
      )
    })
  }

  shinyApp(ui = ui, server = server)
}

#' @rdname slack_editors
#' @export
tool_slack_editors <- ellmer::tool(
  slack_editors,
  "Generate a message for editors-only from comments in a review-issue passed as json",
  package_review_issue_url = type_string(
    "URL of the package review issue. Defaults to
  'https://github.com/ropensci/software-review/issues/000'.",
    required = FALSE
  ),
  package_repo_url = type_string(
    "URL of the package repository. Defaults to
  'https://github.com/jhondoe/coolr'.",
    required = FALSE
  ),
  type = type_string(
    "Type of submission (e.g., 'standard'). Defaults to 'standard'.",
    required = FALSE
  ),
  category = type_string(
    "Category of the package (e.g., 'workflow automation'). Defaults to
  'category \"workflow automation\"'.",
    required = FALSE
  ),
  package = type_string(
    "Name of the package. Defaults to 'coolr'.",
    required = FALSE
  ),
  package_does = type_string(
    "What the package does. Defaults to 'does cool things in R'.",
    required = FALSE
  ),
  package_check_shows = type_string(
    "Summary of the package check results. Defaults to 'this package is
  in top shape'.",
    required = FALSE
  ),
  in_scope_because = type_string(
    "Reason why the package is in scope. Defaults to 'it streamlines
  necessary processes'.",
    required = FALSE
  ),
  my_checks_show = type_string(
    "Summary of the preliminary checks performed. Defaults to 'the
  package is awesome'.",
    required = FALSE
  ),
  my_checks_url = type_string(
    "URL to the detailed preliminary checks. Defaults to
  'https://github.com/ropensci/software-review/issues/000#issuecomment-0000000000'.",
    required = FALSE
  ),
  category_description = type_string(
    "Description of the category. Defaults to 'Tools that automate and
  link together workflows, such as build systems and tools to manage
  continuous integration. Does not include general tools for literate
  programming. (e.g., R markdown extensions not under the previous topics).
  (Example: drake)'.",
    required = FALSE
  )
)

#' @rdname slack_editors
#' @export
prompt_slack_editors <- function() {
  paste(
    "Generate a message for editors-only from the review-issue passed as json below.",
    "To find my checks look  towards the end of the thread for my handle: maurolepore.",
    "Highlight the potential issues I flag under unchecked boxes:"
  )
}
