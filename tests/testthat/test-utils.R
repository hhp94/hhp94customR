test_that("head1 works", {
  d <- head1(mtcars)
  expect_equal(nrow(d), 6)
  expect_equal(ncol(d), 6)
})
