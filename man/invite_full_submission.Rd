% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/invite_full_submission.R
\name{invite_full_submission}
\alias{invite_full_submission}
\alias{app_invite_full_submission}
\title{Invite full submission}
\usage{
invite_full_submission(
  handle = "johndoe",
  guide_url = "https://devdevguide.netlify.app/softwarereview_author"
)

app_invite_full_submission()
}
\value{
Text
}
\description{
As an EiC invite a full submission.
}
\examples{
invite_full_submission()

if (interactive()) app_invite_full_submission()
}
