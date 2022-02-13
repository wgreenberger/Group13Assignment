library(shiny)
install.packages("fpp3")
library(fpp3)
data(tourism)
ui <- fluidPage(
  mainPanel(plotOutput("distPlot")))
  


server <- function(input, output, session) {
  output$distPlot<-renderPlot( autoplot( filter(tourism,Region=="Canberra")))
}

shinyApp(ui, server)