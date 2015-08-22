---
title: "README"
author: "Davide Liperoti"
date: "22 agosto 2015"
output: html_document
---

This is the "Airquality APP" developed as project of Coursera's class "Developing Data Products".

## HOW TO USE THE APP
In this app, you can interact with the original database and show different plots about the variable present in the original dataset: Ozone, Solar Radiation, Wind and Temperature.

* Inside the mainpanel "Airquality Data" it is possibile to choose the month and, with sliders, subset the original database with the value that you want.

* Inside the mainpanel "Plotting the Data" it is possibile to plot different plot during a specific month chosen in the side panel: 4 plots are present and they change reacting to user's input. As said in the tab, you can only change "Month" variable, others sliders don't work on this tab.

## NOTE about dataset
Dataset has many NA values inside, so I decided to omit the observations that are not completed: sometimes you will see few entries because of this fact.

## FUTURE improvements
This App can be surely better, here some thoughts:

1. removing NA and using the mean value of the next and previous days
2. removing the interactivity with sliders when plots are selected, keeping only "Month"
