library(shiny)

ui <- fluidPage(
  titlePanel("Simple counter application"),
  
  sidebarLayout(
    sidebarPanel(
      actionButton("inc", "Increment"),
    ),
    
    mainPanel(
      h3("Current count:"),
      textOutput("count")
    )
  )
)

server <- function(input, output, session) {
  # TODO: Create reactiveVal to store the count
  counter <- reactiveVal(0)
  # TODO: Define an observer to update count based on button clicks
  output$count <- renderText(counter())
  })
  # TODO: Render the current count
}


shinyApp(ui, server)