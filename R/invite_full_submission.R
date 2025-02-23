#' Invite full submission
#'
#' As an EiC invite a full submission.
#'
#' @param handle Character. The handle of the package author.
#' @param guide_url Character. The URL of the guide for authors.
#'
#' @return Text
#' @export
#'
#' @examples
#' invite_full_submission()
#'
#' if (interactive()) app_invite_full_submission()
invite_full_submission <- function(
  handle = "johndoe",
  guide_url = c(
    "https://devdevguide.netlify.app/softwarereview_author",
    "https://stats-devguide.ropensci.org/pkgdev.html"
  )
) {
  guide_url <- match.arg(guide_url)
  glue::glue(
    "
    Dear @{handle}, thanks for sharing your work with rOpenSci, and for starting with a pre-submission.

    We welcome your full submission. Please take your time to read our [Guide for authors]({guide_url}).

    Now some general recommendations to consider.

    The handling editor's intent is to help you go through the peer-review process as quickly and smoothly as possible. For that they'll look for opportunities to make the best out of the limited reviewer's time. The goal is to shape the package so that reviewers can understand and test it as completely and quickly as possible.

    For example it helps to have:

    * A README with a succinct and strong case for the package, installation instructions that 'just work' on anyone's computers, and at least one meaningful and reproducible example showing code and output.
    * A website so that the editor/reviewers can see the vignettes and function-examples even before they install the package.
    * Tests that are easy and quick to setup and run.

    You can anticipate the requirements by looking at the editor's template: https://devdevguide.netlify.app/editortemplate

    I'll go ahead and close this issue and I look forward to your full submission whenever you're ready.
    "
  )
}

#' @export
#' @rdname invite_full_submission
app_invite_full_submission <- function() {
  ui <- fluidPage(
    titlePanel("Invite Full Submission"),
    sidebarLayout(
      sidebarPanel(
        textInput("handle", "Handle", value = "johndoe"),
        textInput(
          "guide_url",
          "Guide URL",
          value = "https://devdevguide.netlify.app/softwarereview_author"
        )
      ),
      mainPanel(
        verbatimTextOutput("output")
      )
    )
  )
  server <- function(input, output) {
    output$output <- renderPrint({
      invite_full_submission(
        handle = input$handle,
        guide_url = input$guide_url
      )
    })
  }
  shinyApp(ui = ui, server = server)
}
