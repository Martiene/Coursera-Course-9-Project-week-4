library(shiny)
library(shinythemes)
shinyUI(fluidPage(theme = shinytheme ("superhero"), 
    mainPanel(
      h1("Predict the Population in the Netherlands"),
      h4("Choose a year and press on the Calculate button. This app will calculate the 
         Population for that year in The Netherlands. You can find the Population right here below. 
        The graph below shows the data on which the calculation is based."),
      h3("Predicted Population in the Netherlands (* 1,000):"),
      textOutput("pred1"),h3("Choose a year"),
      sliderInput("slider", "Year", 1900, 2100, value = 2017),
      submitButton("Calculate"),
      h3("  "),
      plotOutput("plot1")
    )
  )
)