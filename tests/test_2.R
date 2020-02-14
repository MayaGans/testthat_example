library(shinytest)
library(testthat)

context("Test Shiny app")

app <- ShinyDriver$new(".")

test_that("static_text correct", {

  # get static_text
  output <- app$getValue(name = "static_text")
  # test
  expect_equal(output, "This is just text")
})

app$stop()
