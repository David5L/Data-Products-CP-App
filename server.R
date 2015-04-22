library(shiny)
source("helpers.R")

library(maps)
library(mapproj)

# server.R

shinyServer(
    function(input, output) {
        
        output$value <- renderText({ input$text })
        output$value2 <- renderText({ paste( "Is", as.character(precip[input$text]), "Inches")})
        output$value3 <- renderText({ as.character(round((length(precip[precip <= precip[input$text]]) / length(precip) * 100)))})
        
        output$map <- renderPlot({
            
            
            
            percent_map(var = precip, 
                        color = "darkblue", 
                        "Avg. Annual Precipitation") 
                        
        })
    }
)