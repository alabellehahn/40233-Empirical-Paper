# Empirical Paper Code

## Table of Contents

- [](link to eventual github location of .Rmd file)
- [](link to eventual github location of excel file)

## Purpose of this Repository

This repository contains the data from [Mintel](https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ffilters.category%3D118%26last_filter%3Dcategory) and uses it to assess how consumer trends have changed over the course of the pandemic across demographics.

## Steps used to Tidy data
1) Isolated the sheet for each recorded month
2) Removed blank spaces and unnecessary notes
3) Renamed categories for shorter reference titles
4) Removed bold formatting of titles
5) Manually nested demographic question answers to differentiate them from the headers
6) Removed blank rows
7) Reformatted the data into a tidy tibble 


## Resources Used 

- [Lengthy video describing how to clean excel data](https://www.youtube.com/watch?v=xhMNW3Y6C2Q)
- [For splitting a data frame into multiple](https://statisticsglobe.com/split-data-frame-in-r)
