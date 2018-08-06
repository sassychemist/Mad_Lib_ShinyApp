library(shiny)
source("madlibRhyme.R")

ui <- fluidPage(
        titlePanel("MadLib Nursery Rhymes"),
        sidebarLayout(
            sidebarPanel(
                helpText("MadLibs are funny stories or poems formed 
                        when you supply various words of different
                        parts of speech without knowing what the 
                        story is before hand."),
                selectInput("select", label = h4("Select which Rhyme"),
                            choices = list ("Rhyme 1", "Rhyme 2", "Rhyme 3"),
                            selected = "Rhyme 1"),
                
                textInput(inputId = "noun1", label = NULL, value = "Enter a proper Name..."),
                textInput(inputId = "noun2", label = NULL, value = "Enter a place..."),
                textInput(inputId = "noun3", label = NULL, value = "Enter an animal..."),
                textInput(inputId = "adj1", label = NULL, value = "Enter an adjective..."),
                textInput(inputId = "adj2", label = NULL, value = "Enter an adjective..."),
                textInput(inputId = "adj3", label = NULL, value = "Enter an adjective..."),
                textInput(inputId = "verb1", label = NULL, value = "Enter a verb in present tense..."),
                textInput(inputId = "verb2", label = NULL, value = "Enter a verb in past tense..."),
                textInput(inputId = "verb3", label = NULL, value = "Enter a verb in past tense..."),
                helpText("Click \"MadLib!\" to start!"),
                actionButton("goButton", "MadLib!")
            ), 
            mainPanel(
                h2("Your Mother Goose Madlib!"),
                h3(textOutput("text")),
                tags$head(tags$style("#text{color: red;
                                 font-size: 20px;
                                     font-style: italic;
                                     }"
                         )
                )
            )
        )
       
)

server <- function(input, output) {
    
    # You can access the value of the widget with input$text, e.g.
    
    output$text <- renderText({
        mlrhymeInput()
    })
    mlrhymeInput <- eventReactive(input$goButton, {
        selectedRhyme <- switch(input$select, 
                                "Rhyme 1" = 1,
                                "Rhyme 2" = 2,
                                "Rhyme 3" = 3)
        madlibVector <- c(input$noun1, input$noun2, input$noun3, input$adj1, input$adj2,
                          input$adj3, input$verb1, input$verb2, input$verb3)
        
        madlibRhyme(selectedRhyme, madlibVector)
    })
}

shinyApp(ui = ui, server = server)