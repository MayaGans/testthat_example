library(shinytest)
library(testthat)

context("Test text output")

app <- ShinyDriver$new(".")

test_that("text_test correct", {

  app$setInputs(num_input = 5)
  # get static_text
  output <- app$getValue(name = "text_test")
  # test
  expect_equal(output, "Filtering by 5")
})

app$stop()
