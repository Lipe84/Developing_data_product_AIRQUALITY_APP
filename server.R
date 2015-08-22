library(shiny)

# Load data processing file
source("project_01.R")

shinyServer(
    function(input, output) {

## Preparing the data        
        # subsetting the dataset using different widgets
        dataSubset <- reactive({
            groupByInput(dt, input$month,
                         input$ozone[1], input$ozone[2],
                         input$solar[1], input$solar[2],
                         input$wind[1], input$wind[2],
                         input$temp[1], input$temp[2])
        })
        # subsetting the dataset only for month
        dataByMonth <- reactive({
            groupByMonth(dt, input$month)
        })
        
## Creating the output        
        # Render the database subsetted as described above
        output$dTable <- renderDataTable({
            dataSubset()
        })
        
        # Render the plot - OZONE ~ DAY
        output$ozoneByMonth <- renderPlot({
            p <- ggplot(dataByMonth(), aes(x = Day, y = Ozone)) +
                geom_line(stat="identity", size = 1, colour = "springgreen3") +
                geom_point(size = 5, colour = "springgreen4") +
                theme_bw()
            print(p)
        })
        
        # Render the plot - SOLAR ~ DAY
        output$solarByMonth <- renderPlot({
            p <- ggplot(dataByMonth(), aes(x = Day, y = Solar.R)) +
                geom_line(stat="identity", size = 1, colour = "orange") +
                geom_point(size = 5, colour = "red") +
                theme_bw()
            print(p)
        })
        
        # Render the plot - WIND ~ DAY
        output$windByMonth <- renderPlot({
            p <- ggplot(dataByMonth(), aes(x = Day, y = Wind)) +
                geom_line(stat="identity", size = 1, colour = "slateblue3") +
                geom_point(size = 5, colour = "slateblue4") +
                theme_bw()
            print(p)
        })
        
        # Render the plot - TEMP ~ DAY
        output$tempByMonth <- renderPlot({
            p <- ggplot(dataByMonth(), aes(x = Day, y = Temp)) +
                geom_line(stat="identity", size = 1, colour = "purple3") +
                geom_point(size = 5, colour = "purple4") +
                theme_bw()
            print(p)
        }) 
    }
)