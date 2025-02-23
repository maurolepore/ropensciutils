test_that("gets the expected issue", {
  out <- get_comments(168)
  expect_true(hasName(out[[1]], "body"))
})

test_that("with no number errors", {
  expect_error(get_comments(), "number.*missing")
})
