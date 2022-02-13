ui <- fluidPage(
  
  # Application title
  titlePanel("The Word Duplicator App"),
  textInput("text1", "Insert a word you would like to be duplicated", "..."),
  verbatimTextOutput("text1"), 
)


# Define server logic required to draw a histogram
server <- function(input, output) {
  output$text1 <- renderText({ input$text1 })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
