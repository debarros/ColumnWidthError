if("package:googleCharts" %in% search()) detach("package:googleCharts", unload=TRUE)
library(shiny)
column2 = column
library(shinythemes)
library(googleCharts)

shinyUI(navbarPage("My Electronic CV", theme = shinytheme('readable'), inverse = TRUE,
                   tabPanel("Overview Section",
                            fluidRow(
                              column2(width = 4,
                                     "4"
                              ),
                              column2(width = 3, offset = 2,
                                     "3 offset 2"
                              )
                            ) #closing bracket for fluidRow
                   ) #closing bracket for tabPanel
) #closing bracket for navbarPage
) #closing bracket for shinyUI