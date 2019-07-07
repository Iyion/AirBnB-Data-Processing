require(shiny)
require(leaflet)
require(ggplot2)

ui <- fluidPage(
  titlePanel("AirBnB-Daten in Berlin"),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Karte", leafletOutput("kartenoutput")), 
      tabPanel("Auswertungen", "Auswertungen"), 
      tabPanel("Rohdaten", "Rohdaten")
    )
  )
)