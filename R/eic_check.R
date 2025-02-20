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
