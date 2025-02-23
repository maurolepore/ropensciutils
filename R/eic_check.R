#' Editor (pre) checks
#'
#' As the EiC create the first comment following a (pre) submission, including
#' a template for preliminary editor checks.
#'
#' @inheritParams invite_full_submission
#'
#' @return Text
#' @export
#'
#' @examples
#' eic_check()
#'
#' if (interactive()) app_eic_check()
eic_check <- function(handle = "johndoe") {
  header <- eic_template_header()
  glue::glue(header, editor_template_impl())
}

eic_template_header <- function() {
  "
  @{handle} thanks for sharing your work with rOpenSci.

  I'll share preliminary checks for discussion with the editorial board.

  @{handle} if any of this helps as feedback, it's a good time to make changes.

  "
}

#' @export
#' @rdname eic_check
app_eic_check <- function() {
  ui <- fluidPage(
    titlePanel("EIC Check"),
    sidebarLayout(
      sidebarPanel(
        textInput("handle", "Handle", value = "johndoe")
      ),
      mainPanel(
        verbatimTextOutput("output")
      )
    )
  )

  server <- function(input, output) {
    output$output <- renderPrint({
      eic_check(handle = input$handle)
    })
  }

  shinyApp(ui = ui, server = server)
}
