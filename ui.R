if("package:googleCharts" %in% search()) detach("package:googleCharts", unload=TRUE) #if googleCharts is loaded, detach it
library(shiny)
column2 = column #define column2 as a new function that will not be masked by the column function in googleCharts
library(shinythemes)
library(googleCharts) 

shinyUI(navbarPage("Using column() with both googleCharts and shiny loaded", 
                   theme = shinytheme('readable'), 
                   inverse = TRUE,
                   tabPanel("Top Section",
                            fluidRow(
                              column2(width = 4,"Width is 4"),
                              column2(width = 3, offset = 2,"Width is 3, offset is 2")
                            )
                   )
))