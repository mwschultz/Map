#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(choroplethr)
library(choroplethrMaps)
library(tidyverse)
data(df_pop_state)
data(df_pop_county)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$countPlot <- renderPlot({ 
  	
  	if (input$detail == "State") {
  		state_choropleth(df_pop_state)
  		
  	}
    else {
    # generate bins based on input$bins from ui.R
  		county_choropleth(df_pop_county)
    }
    
  })
  
})
