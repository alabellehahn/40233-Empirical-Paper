Exploratory Data Visualizations
================
Alana LaBelle-Hahn
12/10/2021

``` r
#Seeing all the comparisons in panel form - *VERY USEFUL*
consumer_data %>%
  group_by(type) %>%
  filter(consumption == "Away from home (eg restaurant, café, etc)") %>%
  filter(!type == "none of the above") %>%
  filter(!type == "None of the above") %>%
  ggplot(mapping= aes(x = date, y = n, fill = n, na.rm = TRUE)) + 
  geom_col() +
  coord_flip() +
  ylim(0,10000) +
  scale_color_brewer(palette="Dark2") +
  facet_wrap(facets = vars(type), scales = "free") + 
  labs(title = "Consumption Levels Across Ethnic Cuisines",
       subtitle = "Before and Throughout Pandemic",
       y = "Aggregated Percentages",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")
```

    ## Warning: Removed 107 rows containing missing values (position_stack).

    ## Warning: Removed 14 rows containing missing values (geom_col).

![](Exploratory-Data-Visualizations_files/figure-gfm/Consumption%20across%20time-1.png)<!-- -->

# USABLE

``` r
consumer_data %>%
  filter(consumption == "Away from home (eg restaurant, café, etc)") %>%
  filter(!type == "none of the above") %>%
  filter(!type == "None of the above") %>%
  filter(!consumption == "Total") %>%
  filter(question == "Generation (5 generation groups):") %>%
  ggplot(mapping= aes(x = date, y = n, fill = type, na.rm = TRUE)) + 
  geom_col() +
  coord_flip() +
  ylim(0,300) +
  scale_color_brewer(palette="Dark2") +
  facet_wrap(facets = vars(demographic), scales = "free") + 
  labs(title = "Consumption Levels Across Generations",
       subtitle = "Before and Throughout Pandemic",
       y = "Monthly Consumption Percentages Aggregated",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")
```

    ## Warning: Removed 7 rows containing missing values (geom_col).

![](Exploratory-Data-Visualizations_files/figure-gfm/Measures%20across%20generations-1.png)<!-- -->

``` r
consumer_data %>%
  filter(consumption == "Away from home (eg restaurant, café, etc)") %>%
  filter(!type == "none of the above") %>%
  filter(!type == "None of the above") %>%
  filter(!consumption == "Total") %>%
  filter(question == "Do you consider yourself...?:") %>%
  ggplot(mapping= aes(x = date, y = n, fill = type, na.rm = TRUE)) + 
  geom_col() +
  coord_flip() +
  ylim(0,300) +
  scale_color_brewer(palette="Dark2") +
  facet_wrap(facets = vars(demographic), scales = "free") + 
  labs(title = "Consumption Levels Across Racial Groups",
       subtitle = "Before and Throughout Pandemic",
       y = "Monthly Consumption Percentages Aggregated",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")
```

    ## Warning: Removed 18 rows containing missing values (geom_col).

![](Exploratory-Data-Visualizations_files/figure-gfm/Measures%20across%20Racial%20Category-1.png)<!-- -->

``` r
consumer_data %>%
  group_by(type) %>%
  filter(type %in% c("chinese", "mexican", "italian")) %>%
  filter(consumption == "Away from home (eg restaurant, café, etc)") %>%
  filter(!type == "none of the above") %>%
  filter(!type == "None of the above") %>%
  filter(!consumption == "Total") %>%
  filter(question == "Census region:") %>%
  ggplot(mapping = aes(x = demographic, y = n, color = type)) +
  geom_boxplot() + 
  coord_flip() + 
  labs(title = "Regional Consumption of Most Popular Cuisines",
       subtitle = "Before pandemic and throughout", 
       x = "Region", 
       y = "Percent Consumption",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")
```

![](Exploratory-Data-Visualizations_files/figure-gfm/Boxplot%20of%20most%20pop%20by%20region-1.png)<!-- -->
