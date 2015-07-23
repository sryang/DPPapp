library(shiny)

shinyUI(fluidPage(
          
          titlePanel("Shiny App Project for Developing Data Products"),
          
          sidebarLayout(
                   sidebarPanel(
                                radioButtons("var1","Choose one to see impact on MPG:",
                                             c("Horsepower" = "hp",
                                               "Weight" = "wt",
                                               "cylinders" = "cyl"))
                                ),
                   mainPanel(
                              "A car's miles per gallon measure is determined by different variables such as
                             horsepower, weight and the number of cylinders. This page will show you the
                             impact of each variable from the sample dataset mtcars.",
                             plotOutput("plot1")
                             )

                   
                   )
                    
                   ))