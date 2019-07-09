require(shiny)
require(leaflet)
require(ggplot2)
require(shinycssloaders)

ui <- fluidPage(
  style = "background-color: rgba(200, 200, 200, 0.3",
  
  titlePanel("AirBnB-Daten in Berlin"),
 
  tabsetPanel(
    tabPanel("Karte",
             sidebarPanel(
               radioButtons("radioColors", h3("Farbe der Ausgabewerte"),
                            choices = list("Blau" = "blue",
                                           "Rot" = "red",
                                           "Grün" = "green"),
                            selected = "blue"),
               fluidPage(
                 checkboxGroupInput("checkQuarter",
                                    h3("Filtere nach Bezirken"),
                                    choices = list("Friedrichshain - Kreuzberg",
                                                   "Mitte",
                                                   "Neukölln",
                                                   "Tempelhof - Schöneberg",
                                                   "Lichtenberg",
                                                   "Charlottenburg-Wilm.",
                                                   "Marzahn - Hellersdorf",
                                                   "Pankow",
                                                   "Steglitz - Zehlendorf",
                                                   "Reinickendorf",
                                                   "Spandau",
                                                   "Treptow - Köpenick"),
                                    selected = list()),
                 actionButton("selectAll", "Alle markieren"),
                 actionButton("deselectAll", "Alle demarkieren"),
                 textOutput("testtxt")
                 )
               ),
             
             
             mainPanel(
               leafletOutput("kartenoutput"))
    ),
    
    
    tabPanel("Auswertungen", "Auswertungen"),
    
    tabPanel("Rohdaten", "Rohdaten")),
    
  

  
  mainPanel()
)