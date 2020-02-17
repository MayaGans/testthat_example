library(shinytest)
library(testthat)
library(rvest)

context("Test Sepal Output")

app <- ShinyDriver$new(".")

test_that("Sepal Length filtered by num_output", {
  
  # set num_input to 30
  app$setInputs(num_input = 6)
  # get text_out
  output <- app$getValue(name = "summary")
  my_df <- as.data.frame(read_html(output) %>% html_table(fill=TRUE))
  
  # create output dataset
  ir <- iris
  ir$Species <- as.character(iris$Species)
  test_data <- ir %>% filter(Sepal.Length > 6)
    
  # ensure it matches the shiny output
  expect_identical(test_data, my_df)
})

app$stop()