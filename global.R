library(shiny)
library(timevis) 
library(plotly)
library(RColorBrewer)
library(leaflet)
library(visNetwork)
library(rsconnect)



data<- data.frame( 
  id = 1:11, 
  content = c("Ecole Spéciale des Travaux Publics<br>du Bâtiment et de l'Industrie - Paris" ,"Stage et vacation au<br>bureau du Patrimoine Immobilier<br>CNRS","Stage en<br>conduite de travaux<br>Vinci Construction","Stage Correspondante<br>Systèmes d'information<br>Bouygues Construction", "<b>Ingénieur d'études - BONNA SABLA</b>" , "Fondation Louis Vuitton","Chantier Ligne à Grande Vitesse SEA","<b>Responsable bureau d'études - BONNA SABLA</b>","Mise en place<br>du BIM en interne", "Projet de<br>standardisation<br>des produits<br>Bonna Sabla","<b>Certificat<br>Data Scientist<br>CEPE Formation<br>continue<br>ENSAE ENSAI</b>"), 
  start = c(  "2006-09-01",     "2007-03-01"  ,          "2008-07-01"         ,"2009-06-01",                                         "2009-09-01",                       "2010-02-01","2012-03-01","2014-01-01",  "2015-07-01" ,"2017-03-01"      ,                       "2021-03-22"), 
  end = c(    "2009-08-01",        NA       ,                   NA,         NA,                      "2013-12-31",                      NA,NA, "2021-05-01",                          NA,NA,      NA),
  group = c(3, 2,2,2,2, 1, 1,2,1,1,3),
  style=(c("background-color: #A8DDB5;","background-color:#7BCCC4;","background-color:#7BCCC4;","background-color:#7BCCC4;","background-color:#08589E;","","","background-color:#08589E;","","","background-color: #A8DDB5;"))
  ) 



groupes = data.frame(id = 1:3, content = c("Projets", "Experience<br>professionnelle","Formation"))


systeme_expl<-c("Windows","MacOS","Ubuntu")
progr<-c("R","Python","VBA")
packagesRutilisés<-c("shiny","ggplot2","caret","tidymodel","dplyr","officeR")
datascience<-c("Text mining","Graph mining","Webscraping","Visualisation","Machine learning","Deep learning","Application interactive")

fig<-data.frame(labels = c("Systèmes<br>d'exploitation","Langages<br>de programmation","Data science","Compétences<br>générales","Soft<br>skills","Windows","MacOS","Ubuntu","R","Python","VBA","Text mining","Graph mining","Webscraping","Visualisation","Machine<br>learning","Deep<br>learning","Application<br>interactive","Gestion<br>de projets","Management","Communication orale<br>et écrite","Rigueur","Motivation","Organisation","Efficacité"),
parents = c("","","","","","Systèmes<br>d'exploitation","Systèmes<br>d'exploitation","Systèmes<br>d'exploitation","Langages<br>de programmation","Langages<br>de programmation","Langages<br>de programmation","Data science","Data science","Data science","Data science","Data science","Data science","Data science","Compétences<br>générales","Compétences<br>générales","Compétences<br>générales","Soft<br>skills","Soft<br>skills","Soft<br>skills","Soft<br>skills"),
colors = c("#A8DDB5","#7BCCC4","#4EB3D3","#2B8CBE","#08589E"))

nodes <- data.frame(id=c(1:17),
                    label=c("python","R","panda","numpy","matplotlib","Pandas","scikit-learn","nltk","textBlob","plotly","leaflet","tidymodel","ggplot2","caret","dplyr","shiny","officeR" ),
                    shape=c("diamond","diamond","star","star","star","star","star","star","star","star","star","star","star","star","star","star","star"),
                    color = c("#08589E", "#2B8CBE", "#7BCCC4", "#7BCCC4", "#7BCCC4","#7BCCC4", "#7BCCC4", "#7BCCC4","#7BCCC4", "#7BCCC4", "#7BCCC4","#7BCCC4", "#7BCCC4", "#7BCCC4","#7BCCC4", "#7BCCC4", "#7BCCC4"),
                    shadow = c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE)
)
edges <- data.frame(from=c(1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 ,2 ,2, 2),
                       to=c(3,4, 5 , 6,  7,  8,  9, 10, 11, 12, 13, 11, 10, 14, 15 ,16, 17))
