library(shiny)

ui <- fluidRow(title = "Minimal App",
               numericInput("num_input", "Please insert a number:", 0),
               textOutput('text_out'),
               textOutput('static_text'))

server <- function(input, output) {
  
  result <- reactive(input$num_input^2)
  output$text_out <- renderText(paste("The square of the number n = ", result()))
  
  output$static_text <- renderText("This is just text")
}

shinyApp(ui = ui, server = server)

