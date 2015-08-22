---
title: "README"
author: "Davide Liperoti"
date: "22 agosto 2015"
output: html_document
---

This is the "AIRQUALITY APP" developed as project of Coursera's class "Developing Data Products".
In this app, you can interact with the original database and show different plots about the variable present in the original dataset: Ozone, Solar Radiation, Wind and Temperature.

## NOTE about dataset
Dataset has many NA values inside, so I decided to omit the observations that are not completed: sometimes you will see few entries because of this fact.

## FUTURE improvements
This App can be surely better, here some thoughts:

1. removing NA and using the mean value of the next and previous days
2. removing the interactivity with sliders when plots are selected, keeping only "Month"
