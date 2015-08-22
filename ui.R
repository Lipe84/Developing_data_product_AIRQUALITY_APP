library(shiny)
library(ggplot2)

shinyUI(
    # TOP NAVIGATION BAR - global
    navbarPage("Airquality APP",
               
               # TOP NAVIGATION BAR - Airquality
               tabPanel(p(icon("database"), "Exploring the Airquality"),
                        # SIDE PANEL - global
                        sidebarPanel(
                            
                            # SLIDER - Month
                            numericInput(inputId = "month",
                                label = "Choose the month",
                                value = 7,
                                min = 5,
                                max = 9,
                                step = 1),
                            
                            # SLIDER - Ozone level
                            sliderInput(inputId = "ozone",
                                        label = "Ozone level (ppb):",
                                        min = 1,
                                        max = 168,
                                        value = c(1, 168)),
                            
                            # SLIDER - Solar radiation
                            sliderInput(inputId = "solar",
                                        label = "Solar radiation (lang):",
                                        min = 7,
                                        max = 334,
                                        value = c(7, 334)),
                            
                            # SLIDER - Wind
                            sliderInput(inputId = "wind",
                                        label = "Wind level:",
                                        min = 2,
                                        max = 21,
                                        value = c(2, 21)),
                            
                            # SLIDER - Temperature
                            sliderInput(inputId = "temp",
                                        label = "Temperature (°F):",
                                        min = 56,
                                        max = 97,
                                        value = c(56, 97))
                            ),
                        
                        # MAIN PANEL - global
                        mainPanel(
                            tabsetPanel(
                                # TAB - Dataset
                                tabPanel(p(icon("table"), "Airquality Data"),
                                         dataTableOutput("dTable")
                                         ), # end of "TAB - Dataset"
                                
                                # TAB - Plots
                                tabPanel(p(icon("line-chart"), "Plotting the Data"),
                                         h4('Ozone level during the month', align = "center"),
                                         plotOutput("ozoneByMonth"),
                                         
                                         h4('Solar Radiation during the month', align = "center"),
                                         plotOutput("solarByMonth"),

                                         h4('Wind intensity during the month', align = "center"),
                                         plotOutput("windByMonth"),                                                                        

                                         h4('Temperature during the month', align = "center"),
                                         plotOutput("tempByMonth")                      
                                         ) # end of "TAB - Plots"  
                                        )
            )
        ),
        tabPanel(p(icon("question-circle"), "Informations about the Airquality APP"))
)
)