server <- function(input, output) {
  # Render Map with the data points
  output$kartenoutput <- renderLeaflet({
    leaflet()%>%addTiles()%>%addCircles(data$longitude, data$latitude)
  })
}