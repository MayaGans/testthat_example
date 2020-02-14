library(shinytest)
library(testthat)

context("Test Shiny app")

app <- ShinyDriver$new(".")

test_that("output is correct", {
  # set num_input to 30
  app$setInputs(num_input = 30)
  # get text_out
  output <- app$getValue(name = "text_out")
  # test
  expect_equal(output, "The square of the number n = 900")
})

app$stop()