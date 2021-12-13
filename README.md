# Empirical Paper Code

## Table of Contents

- [Steps for cleaning the data](https://github.com/alabellehahn/40233-Empirical-Paper/blob/main/Cleaning%20the%20data.Rmd)
- [The edited excel file from which data was extracted](https://github.com/alabellehahn/40233-Empirical-Paper/blob/main/Cuisine%20Tracker%20Data_Edited.xlsx)
- [Code for the resulting visualizations](https://github.com/alabellehahn/40233-Empirical-Paper/blob/main/Exploratory%20Data%20Visualizations.Rmd)
- [Folder of graph images](https://github.com/alabellehahn/40233-Empirical-Paper/tree/main/Exploratory-Data-Visualizations_files/figure-gfm)


## Purpose of this Repository

This repository contains the data from [Mintel](https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ffilters.category%3D118%26last_filter%3Dcategory) and uses it to assess how consumer trends have changed over the course of the pandemic across demographics.


## Required librarires

- library(tidyverse)
- library(dplyr)
- library(readxl)
- library(tidyxl)
- library(data.table)
- library(unpivotr)
- library(knitr)
- library(stringr) 
- library(zoo)

## Steps used to Tidy data

1) Isolated the sheet for each recorded month
2) Removed blank spaces and unnecessary notes
3) Renamed categories for shorter reference titles
4) Removed bold formatting of titles
5) Manually nested demographic question answers to differentiate them from the headers
6) Removed blank rows
7) Reformatted the data into a tidy tibble in R


## Resources Used 

- [A lifesaving video about how to rework weirdly formatted excel data](https://www.youtube.com/watch?v=ShWxAqnY2YE)
- [For merging dataframes in R](https://r-lang.com/how-to-combine-two-data-frames-in-r/)
- [More helpful tools for binding dataframes](https://r-lang.com/rbind-in-r/)

