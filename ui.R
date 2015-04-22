library(shiny)
# Define UI
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Precipitation"),
    
    # Sidebar with a slider input for the number of bins
    sidebarLayout(
        sidebarPanel(
            helpText("Find the average annual precipitation of your favorite city.
                     Based on the 1975 Statistical Abstract of the U.S. of the 70 largest cities"),
            
            textInput("text", label = h3("Text input"), value = "Enter City..."),
            
            hr(),
            h4("The Average Annual Precipitation For"),
            textOutput("value"),
            textOutput("value2"),
            h4("Which ranks it in the "),
            textOutput("value3"),
            h4("percentile")
            
            ),
        
    
        
        
        mainPanel(plotOutput("map"))
        
    )
        
    
))
