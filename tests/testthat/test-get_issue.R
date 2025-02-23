test_that("gets the expected issue", {
  skip_if_offline()
  skip_on_ci()

  out <- get_comments(168)
  expect_true(hasName(out[[1]], "body"))
})

test_that("with no number errors", {
  skip_if_offline()
  skip_on_ci()

  expect_error(get_comments(), "number.*missing")
})
