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