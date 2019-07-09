require(shiny)
require(leaflet)
require(ggplot2)
require(shinycssloaders)

ui <- fluidPage(
  style = "background-color: rgba(200, 200, 200, 0.3",
  
  titlePanel("AirBnB-Daten in Berlin"),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Karte", 
               sidebarPanel(
                 radioButtons("radioColors", h3("Farbe der Ausgabewerte"),
                              choices = list("Blau" = "blue",
                                             "Rot" = "red",
                                             "Grün" = "green"),
                              selected = "blue"),
                 numericInput("num",
                              h3("Numeric Input"),
                              value = 0)),
                 actionButton("rowAnimation", "Starte Animation")
                 
                 ),
               mainPanel(
               leafletOutput("kartenoutput"))
      ),
      tabPanel("Auswertungen", "Auswertungen"),
      
      tabPanel("Rohdaten", "Rohdaten")
  )
)