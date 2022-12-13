test_that("head1 works", {
  d <- head1(mtcars, 2, 3)
  expect_equal(nrow(d), 2)
  expect_equal(ncol(d), 3)
})
