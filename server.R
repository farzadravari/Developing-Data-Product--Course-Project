library(shiny)

BMI = function(height,weight){
  return(weight/(height/100)^2)
}

shinyServer(
  function(input, output) {
    output$OHT <- renderPrint({input$IHT})
    output$OWT <- renderPrint({input$IWT})
    output$prediction <- renderPrint({BMI(input$IHT, input$IWT)})
    
  }
)
