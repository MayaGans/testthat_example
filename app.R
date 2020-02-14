library(shiny)

ui <- fluidRow(title = "Minimal App",
               numericInput("num_input", "Please insert a number:", 0),
               textOutput('text_out'))

server <- function(input, output) {
  result <- reactive(input$num_input^2)
  output$text_out <- renderText(paste("The square of the number n = ", result()))
}

shinyApp(ui = ui, server = server)

