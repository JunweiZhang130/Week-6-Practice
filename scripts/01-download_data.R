#### Preamble ####
# Purpose: Download data from NASA_APOD
# Author: Rae Zhang
# Data: 11 February 2023 
# Contact: junwei.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: N/A
# Any other information needed? 


#### Workspace setup ####
library(httr)
library(tidyverse)
library(xml2)
library(jpeg)

if (!dir.exists("inputs")) {
  dir.create("inputs")
}

NASA_APOD_20230216 <-
  GET("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2023-02-16")

content(NASA_APOD_20230216)$url |>
  download.file(destfile = "inputs/NASA_APOD_20230216.jpg") 
