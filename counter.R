library(shiny)

ui <- fluidPage(
  titlePanel("Simple counter application"),
  
  sidebarLayout(
    sidebarPanel(
      actionButton("inc", "Increment")
    ),
    
    mainPanel(
      h3("Current count:"),
      textOutput("count")
    )
  )
)

server <- function(input, output, session) {
  # Task 1: Create reactiveVal to store the count
  counter <- reactiveVal(0)
  
  # Task 2: increase count by 1 each time "Increment" is clicked
  observeEvent(input$inc, {
    counter(counter() + 1)
  })
  
  # Task 1: Render the current count
  output$count <- renderText(counter())
}