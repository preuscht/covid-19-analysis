library(dplyr)

Trips_by_Distance <- read_csv("~/Downloads/Trips_by_Distance.csv")

by_level <- Trips_by_Distance %>% group_by(Level)

by_level_mean <- by_level %>% summarise(
  pop_not_home = mean(`Population Not Staying at Home`),
  po_at_home = mean(`Population Staying at Home`)
)

by_state <- filter(Trips_by_Distance, Level == "State") %>% group_by(`State Postal Code`,`Date`)

by_state_mean <- by_state %>% summarise(
  pop_not_home = mean(`Population Not Staying at Home`),
  po_at_home = mean(`Population Staying at Home`)
)

current_usa <- read_csv("https://raw.githubusercontent.com/BloombergGraphics/covid-vaccine-tracker-data/master/data/current-usa.csv")
