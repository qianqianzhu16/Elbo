library(shiny)
library(Elbo)

shinyServer(function(input, output) {
    output$stick <- renderPlot({
        stickyplot(face=tolower(input$face), gender=tolower(input$gender),
                   arms=tolower(input$arms), hat=T)
    })
    output$stick2 <- renderPlot({
        plot(200:1)
    })
})
