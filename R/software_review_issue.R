#' Chat about a specific software review issue
#'
#' Creates the system prompt required to focus a chat to a specific
#' issue in ropensci/software-review.
#'
#' @param issue An integer representing the issue number. This identifies the specific issue for which comments should be retrieved.
#'
#' @return A character string containing a message indicating where to look
#' for answers, along with a JSON representation of the comments associated
#' with the specified issue.
#'
#' @examplesIf FALSE
#' chat <- software_review_issue(688) |> chat_gemini()
#' chat |> software_review_chat("what did maurolepore say?")
software_review_issue <- function(issue) {
  paste(
    "Look for answers only in this issue:",
    jsonlite::toJSON(get_comments(issue))
  )
}

#' @param chat An ellmer chat object
#' @param prompt Character. A prompt to chat about a specific software review issue.
#'
#' @export
#' @rdname software_review_issue
software_review_chat <- function(chat, prompt) {
  chat$chat(prompt)
}
