library(shiny)

shinyUI( navbarPage(
  inverse=TRUE,
  
  title = h2(span('功能選單',style = "color:mintcream")),
      
  tabPanel(h3(span('FB粉絲專頁爬文',style = "color:blanchedalmond")),
           titlePanel(h1("Facebook 臺 灣 美 食 粉 絲 專 頁 詞 雲",style = "color:slateblue")),
           
           sidebarLayout(sidebarPanel(
             checkboxInput(inputId = "tp",
                           label = h3("臺北"),
                           value = FALSE),
             checkboxInput(inputId = "tc",
                           label = h3("臺中"),
                           value = FALSE),
             checkboxInput(inputId = "tn",
                           label = h3("臺南"),
                           value = FALSE),
             checkboxInput(inputId = "hs",
                           label = h3("高雄"),
                           value = FALSE),
             sliderInput("mmax",h3("字 詞 展 示 個 數:"),min = 1, max = 300, value = 100)
             ,width =3),
                         mainPanel(plotOutput("ptplot",height = 1500, width = 1000 )), fluid = TRUE)),
  
  tabPanel(h3(span('FB爬文內容',style = "color:blanchedalmond")),
           titlePanel(h1("Facebook 文 章 內 容 搜 尋",style = "color:slateblue")),
           textInput("name", h3("輸 入 店 家 或 美 食 名 稱:")),
           dataTableOutput(outputId="table2"), 
           tags$div(tags$a(href="https://www.google.com.tw/maps?hl=zh-TW&tab=wl", h2("連 結 Google map"))),fluid = TRUE)
  
  
))
