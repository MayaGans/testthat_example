library(shinytest)
library(testthat)

context("Test Shiny app")

app <- ShinyDriver$new(".")

test_that("Sepal Length filtered by num_output", {
  # set num_input to 30
  app$setInputs(num_input = 6)
  # get text_out
  output <- app$getValue(name = "summary")
  # create output dataset
  test_data <- iris %>% filter(Sepal.Length > 6)
  # ensure it matches the shiny output
  expect_true(identical(output, test_data))
})

app$stop()
