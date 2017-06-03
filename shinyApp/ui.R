setwd("~/Documents/myStuff/courses/09_developingDataProducts/Developing_Data_Products/assignment_wk4")
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
require(MASS)

data(cats)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
    pageWithSidebar(
        headerPanel('Cats k-means clustering'),
        sidebarPanel(
            selectInput('xcol', 'X Variable', c(names(cats)[[2]], names(cats)[[3]]),
                        selected=names(cats)[[2]]),
            selectInput('ycol', 'Y Variable', c(names(cats)[[2]], names(cats)[[3]]),
                        selected=names(cats)[[3]]),
            sliderInput("clusters", "Cluster count", 
                        2, 9, 4, step = 1)
        ),
        mainPanel(
            plotOutput('plot1')
        )
    )
))
