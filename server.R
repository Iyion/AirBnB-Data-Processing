library(dplyr)

server <- function(input, output) {
  
  ## Reactive elements

  data_sub <- reactive({
    filter(data, data$neighbourhood_group %in% input$checkQuarter)
  })
  
  output$testtxt <- renderText({
    paste("Du hast folgende Bezirke gewählt:", data_sub())
  })
  
  # Render Map with the data points
  output$kartenoutput <- renderLeaflet({
    data_sub <- select_all(data_sub())
    leaflet()%>%addTiles()%>%addCircles(data_sub$longitude, data_sub()$latitude, color=input$radioColors)
    
  })
}