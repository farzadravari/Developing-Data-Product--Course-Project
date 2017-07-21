shinyUI(pageWithSidebar(
  headerPanel("Body Mass Index"),
  sidebarPanel(
    numericInput('IHT', 'Enter height in Centemeter', 180, min = 40, max = 240, step = 1),
    numericInput('IWT', 'Enter weight in Kilogram', 80, min = 10, max = 150, step = 5)
  ),
  mainPanel(
    h3('Results'),
    h4('Height'),
    verbatimTextOutput("OHT"),
    h4('Weight'),
    verbatimTextOutput("OWT"),
    h4('BMI'),
    verbatimTextOutput("prediction"),
    h6(em('*BMI= <18.5:Underweight
           *BMI = 18.5–24.9 :Normal weight
           *BMI = 25–29.9 : Overweight
           *BMI = > 30 :Obesity'))
  
  )
))
