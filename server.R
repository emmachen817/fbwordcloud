library(shiny)
library(wordcloud)
library(cluster)
library(memoise)

csv1 <- read.csv("a.csv",stringsAsFactors=F)
csv2 <- read.csv("b.csv",stringsAsFactors=F)
csv3 <- read.csv("c.csv",stringsAsFactors=F)
csv4 <- read.csv("d.csv",stringsAsFactors=F)
csv5 <- read.csv("e.csv",stringsAsFactors=F)
# Define server logic for random distribution application
shinyServer(function(input, output) {

  output$ptplot <- renderPlot({
    
    par(mfrow=c(2,2))
    
    if (input$tp) {
      
      wordsfreq1 <- csv1$l
      wordsname1 <- csv1$d.corpu3 
      wordcloud(wordsname1, wordsfreq1,  min.freq = 1,max.words=input$mmax,  colors = rainbow(length(wordsfreq1)))
      title(main = list( "????????", cex = 3,col= "gray22"???€??€))
    }
    if (input$tc) {
      
      
      wordsfreq2 <- csv2$l
      wordsname2 <- csv2$d.corpu3 
      wordcloud(wordsname2, wordsfreq2,  min.freq = 20,max.words=input$mmax,  colors = rainbow(length(wordsfreq2)))
      title(main = list( "?????????", cex = 3,col= "gray22"???€??€))
    }
    if (input$tn) {
      
      
      wordsfreq3 <- csv3$l
      wordsname3 <- csv3$d.corpu3 
      wordcloud(wordsname3, wordsfreq3,  min.freq = 90,max.words=input$mmax,  colors = rainbow(length(wordsfreq3)))
      title(main = list( "????????", cex = 3,col= "gray22"???€??€))
    }
    
    if (input$hs) {
      
      
      wordsfreq4 <- csv4$l
      wordsname4 <- csv4$d.corpu3 
      wordcloud(wordsname4, wordsfreq4,  min.freq = 10,max.words=input$mmax,  colors = rainbow(length(wordsfreq4)))
      title(main = list( "???¾æ­???", cex = 3,col= "gray22"???€??€))
    }  
  })
  
  output$table2 <- renderDataTable({
    
    csv6<-csv5[,-(1:2)]
    csv6
    csv6[csv6$name==input$name,]
    
  })
  
})