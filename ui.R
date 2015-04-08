if("package:googleCharts" %in% search()) detach("package:googleCharts", unload=TRUE)
library(shiny)
column2 = column
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