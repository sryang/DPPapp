library(shiny)
library(datasets)

# shinyServer(function(input,output) {
#           if input$var1 = "hp" then
#           output$plot1 <- renderPlot({
#                     plot(mtcars$mpg ~ mtcars$hp)
#           else if input$var1 = "wt" then
#                     plot(mtcars$mpg ~ mtcars$wt)
#           else
#                     plot(mtcars$mpg ~ mtcars$wt)
#           })
#           
# })
shinyServer(function(input,output) {
          output$plot1 <- renderPlot({
                    if (input$var1 == "hp") {
                              plot(mtcars$hp, mtcars$mpg, ylab = "Miles/(US) gallon", xlab = "Gross horsepower",
                                   main="Impact of Horsepower on MPG", col = "blue", pch = 17)
                    } else if (input$var1 == "wt") {
                              plot(mtcars$wt, mtcars$mpg, ylab = "Miles/(US) gallon", xlab = "Weight (lb/1000)",
                                   main="Impact of Car Weight on MPG", col = "green", pch = 15)
                    } else
                              plot(mtcars$cyl, mtcars$mpg, ylab = "Miles/(US) gallon", xlab = "Number of cylinders",
                                   main="Impact of Number of Cylinders on MPG", col = "lightblue", pch = 16)
          })
})

# shinyServer(function(input,output) {
#           output$plot1 <- renderPlot({
#                     plot(mtcars$hp ~ mtcars$mpg)
#           })
# })
