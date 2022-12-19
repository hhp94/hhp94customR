test_that("qsave1", {
  d <- mtcars
  fn <- fs::file_temp()
  # print(fn)
  expect_true(!fs::file_exists(fn))
  qsave1(d, fn)
  expect_true(fs::file_exists(fn))
  fs::file_delete(fn)
})
