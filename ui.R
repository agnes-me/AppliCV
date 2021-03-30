shinyUI(
    fluidPage(
        titlePanel(h1("Agnès Mechoulam - Data Scientist", align = "center"), windowTitle = "Agnès Mechoulam"),
        tags$head(
            # Note the wrapping of the string in HTML()
            tags$style(HTML("
      @import url('https://fonts.googleapis.com/css2?family=Yusei+Magic&display=swap');
      body {
        background-color: white;
        color:#44AA99 ;
      }
      h1{font-family: 'Yusei Magic', sans-serif;color:#44AA99,font-size=6pt}
      h2 {
        font-family: 'Yusei Magic', sans-serif;
      }
      h3 {
        font-family: 'Yusei Magic', sans-serif;font-size=4pt;line-heigth:'3em'
      }
      .shiny-input-container {
        color: blue;
      }
      .tabbable > .nav > li > a                  {font-family: 'Yusei Magic', sans-serif;background-color: #44AA99;  color:#F0FFFF}
      .tabbable > .nav > li[class=active]    > a {font-family: 'Yusei Magic', sans-serif;background-color: #7BCCC4; color:white; border-width: 2px;
  border-color: #44AA99;}
      .vis-timeline {
        border: 1px;
        font-family: 'Yusei Magic', sans-serif;
        color:#44AA99;
        font-size: 10pt;
        background: #F0FFFF;
}

.vis-item {
  border-color: #44AA99;
  background-color: #44AA99;
  font-family: 'Yusei Magic', sans-serif;
  font-size: 10pt;
  color: #F0FFFF;
  box-shadow: 3px 3px 20px rgba(128, 128, 128, 0.5);
}

.vis-item,
.vis-item.vis-line {
  border-width: 1px;
}

.vis-item.vis-dot {
  border-width: 3px;
  border-radius: 3px;
}

.vis-item.vis-selected {
  border-color: #44AA99;
  background-color: #F0FFFF;
color: #44AA99;
}

.vis-time-axis .vis-text {
  color: #44AA99;
  padding-top: 5px;
  padding-left: 5px;
}


.vis-time-axis .vis-grid.vis-minor {
  border-width: 2px;
  border-color: #F0FFFF;
}

.vis-time-axis .vis-grid.vis-major {
  border-width: 2px;
  border-color: #44AA99;
}   ")
            )
        ),
  ##Theme
  theme = shinythemes::shinytheme("readable"),
  ##Génération des onglets
    tabsetPanel(type="pills",
        tabPanel("Personnel",column(6,leafletOutput("map",width=600,height = 550)),
                 column(5,h3("De formation initiale ingénieur généraliste, j'ai 12 ans d'expérience dans le domaine de l'industrie de la construction.        Ayant soif de nouveaux challenges, j'ai récemment souhaité me réorienter.       Venant de valider mon certificat de Data Scientist, réalisé en parallèle de mon travail actuel, je cherche donc logiquement le premier poste qui me permettra de faire mes preuves dans ce domaine."))),
        tabPanel("Parcours",
              timevisOutput("timelineBasic",height=100)),
        tabPanel("Compétences",column(6,plotlyOutput('plot',width=550,height = 550)),
                 column(6,visNetworkOutput("network")))
        
    )
)
)
