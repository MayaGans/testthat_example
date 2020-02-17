library(shiny)
library(tidyverse)

ui <- fluidRow(numericInput("num_input", "Sepal Length Greater Than", min = 4.3, value = 6, max = 7.9),
               textOutput("text_test"),
               tableOutput("summary"))

server <- function(input, output) {
  
  output$summary <- renderTable(iris %>% filter(Sepal.Length > input$num_input))
  output$text_test <- renderText(paste("Filtering by ", input$num_input))

}

shinyApp(ui = ui, server = server)