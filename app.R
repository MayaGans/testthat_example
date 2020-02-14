library(shiny)

ui <- fluidRow(numericInput("num_input", "Sepal Length Greater Than", min = 4.3, value = 6, max = 7.9),
               tableOutput("summary"),
               textOutput('static_text'))

server <- function(input, output) {
  
  output$summary <- renderTable(iris %>% filter(Sepal.Length > input$num_input))
  output$static_text <- renderText("This is just text")
}

shinyApp(ui = ui, server = server)

