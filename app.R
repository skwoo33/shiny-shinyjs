######################
# Basic use of shinyjs
######################
library(shiny)
library(shinyjs)

ui <- fluidPage(
  useShinyjs(),
  actionButton("action", "Click me"),
  textInput("text", "Text")
)
# ui <- tagList(
#   useShinyjs(),
#   fluidPage(
#     actionButton("action", "Click me"),
#     textInput("text", "Text")
#   )
# )

server <- function(input, output) {
  observeEvent(input$action, {
    toggle("text")
  })
}

shinyApp(ui, server)


###################################
# Using shinyjs in Shiny Dashboards
###################################
# library(shiny)
# library(shinydashboard)
# library(shinyjs)
# 
# ui <- dashboardPage(
#   dashboardHeader(),
#   dashboardSidebar(),
#   dashboardBody(
#     useShinyjs(),
#     actionButton("button", "Click me"),
#     div(id = "hello", "Hello!")
#   )
# )
# 
# server <- function(input, output) {
#   observeEvent(input$button, {
#     toggle("hello")
#   })
# }
# 
# shinyApp(ui, server)


######################################
# Using shinyjs with navbarPage layout
######################################
# library(shiny)
# library(shinyjs)
# 
# ui <- tagList(
#   useShinyjs(),
#   navbarPage(
#     "shinyjs with navbarPage",
#     tabPanel("tab1",
#              actionButton("button", "Click me"),
#              div(id = "hello", "Hello!")),
#     tabPanel("tab2")
#   )
# )
# 
# server <- function(input, output, session) {
#   observeEvent(input$button, {
#     toggle("hello")
#   })
# }
# 
# shinyApp(ui, server)
