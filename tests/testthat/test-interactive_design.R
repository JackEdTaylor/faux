context("test-interactive_design")

test_that("test", {
  skip("interactive is too annoying")

  within <- list(A = c("A1", "A2", "A3"))
  between <- list(B = c("B1", "B2"))
  n <- 10
  mu <- list(
    B1 = 1:3,
    B2 = 4:6
  )
  sd <- 1
  r <- list(
    B1 = .5,
    B2 = c(.4, .5, .6)
  )
  des2 <- check_design(within, between, n, mu, sd, r, plot = TRUE)
  
  des <- interactive_design()
  
  expect_equal(des$within,  des2$within)
  expect_equal(des$between, des2$between)
  expect_equal(des$id, des2$id)
  expect_equal(des$dv, des2$dv)
  expect_equal(des$n,  des2$n)
  expect_equal(des$mu, des2$mu)
  expect_equal(des$sd, des2$sd)
  expect_equal(des$r,  des2$r)
})