ui <- fluidPage(
  titlePanel("Hallo Welt!"),
  
  sidebarLayout(
    position = "right",
    sidebarPanel("Sidebar Panel"),
    mainPanel(
      h1("Main Panel",align="center"), br(),
      a(href="https://www.google.de","www.google.de",Color="FF0000"), br(),
      div(
        em("Dies ist ein Textabschnitt"),
        style="color:blue"), br(),
      code(
        "if a = b"), br(),
      img(src = "Toffifee.jpg", height=500, width=500)
    )
  )
)