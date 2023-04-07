test_that("Rounding Works", {
  expect_equal(roundx(9.9999, 1), 10.0)
})
test_that("Rounding Dataframe Works", {
  expect_equivalent(roundx_df(data.frame(c(1.111, 1, 1.11), c(1, 1, 1), c("a", "b", "c")), 1),
                              data.frame(c(1.1  , 1, 1.1 ), c(1, 1, 1), c("a", "b", "c")))

})
