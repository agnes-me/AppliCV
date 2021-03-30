shinyServer(function(input, output) {
    output$timelineBasic <- renderTimevis({
        timevis(data,groups = groupes)
    })
    output$plot <- renderPlotly(
        plot1 <- plot_ly(fig,
            labels = ~labels,
            parents = ~parents,
            type = 'sunburst'
        )%>% layout(colorway = fig$colors)
    )
    output$Resume <- renderPrint("De formation initiale ingénieur généraliste, j'ai 12 ans d'expérience dans le domaine de l'industrie de la construction. Ayant soif de nouveaux challenges, j'ai récemment souhaité me réorienter. Venant de valider mon certificat de Data Scientist, réalisé en parallèle de mon travail actuel, je cherche donc logiquement le premier poste qui me permettra de faire mes preuves dans ce domaine.")
    output$map <- renderLeaflet({
            leaflet() %>%
            addProviderTiles('Stamen.Watercolor') %>%
            addCircles(lng = 2.27, lat =48.84,radius=15000,color="#7BCCC4",label="Zone dans laquelle je peux aussi travailler",opacity=0.85)%>%
            
            addCircles(lng = 2.18, lat =48.85,radius=7500,color="#4EB3D3",label="Zone dans laquelle j'aimerais travailler de préférence",opacity=0.85)%>%
            addCircles(lng = 2.0492087, lat =48.866489,radius=1500,color="#08589E",label="J'habite par ici",opacity=0.85)%>%
            setView(lng = 2.27,
                lat = 48.84,
                zoom = 10)
})
    output$network <- renderVisNetwork({visNetwork(nodes, edges, height = "600px", width = "150%",main = "<h3>Quelques packages utilisés</h3>")
                                       })
})    
