#Visualizing any consumption across racial groups
tidied_data %>%
  group_by(type) %>%
  filter(question == "Race (4 race groups):") %>%
  filter(!consumption == "Total") %>%
  filter(consumption == "Any consumption (net)") %>%
  ggplot(aes(x = demographic, y = n, fill = type)) + 
  geom_col(color = "black") + 
  theme_linedraw()+
  labs(title = "Any Ethnic Food Consumption Across Racial Categories", 
       subtitle = "May 2019 Survey", 
       x = "Race",
       y = "Count (out of 2000 respondents)",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")

# Visualizing at take-out consumption
tidied_data %>%
  group_by(type) %>%
  filter(question == "Race (4 race groups):") %>%
  filter(!consumption == "Total") %>%
  filter(consumption == "Away from home (eg restaurant, café, etc)") %>%
  ggplot(aes(x = demographic, y = n, fill = type)) + 
  geom_col(color = "black") + 
  theme_linedraw()+
  labs(title = "Any Ethnic Food Consumption Across Racial Categories", 
       subtitle = "May 2019 Survey", 
       x = "Race",
       y = "Count (out of 2000 respondents)",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")


# Visualizing at take-out consumption
tidied_data %>%
  group_by(type) %>%
  filter(question == "Race (4 race groups):") %>%
  filter(!consumption == "Total") %>%
  filter(consumption == "At home") %>%
  ggplot(aes(x = demographic, y = n, fill = type)) + 
  geom_col(color = "black") + 
  theme_linedraw()+
  labs(title = "Any Ethnic Food Consumption Across Racial Categories", 
       subtitle = "May 2019 Survey", 
       x = "Race",
       y = "Count (out of 2000 respondents)",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff")


# Creating a graph that shows consumption of Asian cuisines by race

test <- asian_perceived %>%
  group_by(type) %>%
  filter(question == "Do you consider yourself...?:") %>%
  filter(consumption == "Away from home (eg restaurant, café, etc)") %>%
  mutate_all(funs(str_replace(., "White (X1)", " ")))

ggplot(mapping= aes(x = date, y = n, fill = demographic)) + 
  geom_col() +
  coord_flip() +
  ylim(0, 250) +
  scale_color_brewer(palette="Dark2") +
  #facet_wrap(facets = vars(type), scales = "free") + 
  labs(title = "Consumption of Asian-perceived Cuisines",
       subtitle = "Before and throughout the pandemic",
       y = "count",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")





# Some prelim graphs

```{r, echo = FALSE}
#Testing analytic capabilities of newly formatted data

consumer_data %>%
  group_by(type) %>%
  group_by(date) %>%
  filter(question == "Race (4 race groups):") %>%
  filter(!consumption == "Total") %>%
  filter(!type == "none of the above") %>%
  filter(!type == "None of the above") %>%
  ggplot(mapping= aes(x = date, y = n, fill = n, na.rm = TRUE)) + 
  geom_col() +
  coord_flip() +
  ylim(0,10000) +
  scale_color_brewer(palette="Dark2") +
  facet_wrap(facets = vars(type), scales = "free") + 
  #ggplot(aes(x = demographic, y = n, fill = type, na.rm = TRUE)) + 
  #geom_col(width = .5) + 
  #scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  theme_linedraw()+
  labs(title = "Ethnic Food Consumption Across Racial Categories", 
       subtitle = "Online Survey of 2000 Adults", 
       x = "Race",
       y = "Count",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")


# Doing a comparison to immediately after the start of the pandemic (May 2020)

consumer_data %>%
  group_by(type) %>%
  group_by(date) %>%
  filter(question == "Race (4 race groups):") %>%
  filter(!consumption == "Total") %>%
  filter(!type == "none of the above") %>%
  filter(!type == "None of the above") %>%
  filter(date == "May 2020") %>%
  ggplot(aes(x = demographic, y = n, fill = type, na.rm = TRUE)) + 
  geom_col(width = .5) + 
  #scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  theme_linedraw()+
  labs(title = "Ethnic Food Consumption Across Racial Categories", 
       subtitle = "Online Survey of 2000 Adults in May 2020", 
       x = "Race",
       y = "Count",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")

#Comparing to August 2020 when we were well into the pandemic

consumer_data %>%
  group_by(type) %>%
  group_by(date) %>%
  filter(question == "Race (4 race groups):") %>%
  filter(!consumption == "Total") %>%
  filter(!type == "none of the above") %>%
  filter(!type == "None of the above") %>%
  filter(type == c("chinese", "japanese", "thai", 
                   "vietnamese", "korean", "filipino")) %>%
  ggplot(aes(x = demographic, y = n, fill = type, na.rm = TRUE)) + 
  geom_col(width = .5) + 
  #scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  theme_linedraw()+
  labs(title = "Ethnic Food Consumption Across Racial Categories", 
       subtitle = "Online Survey of 2000 Adults", 
       x = "Race",
       y = "Count",
       caption = "Source: https://reports-mintel-com.proxy.uchicago.edu/display/1044545/?fromSearch=%3Ff
       ilters.category%3D118%26last_filter%3Dcategory")

```