library(RSocrata)
library(tidyverse)

# main page: https://data.cityofchicago.org/Transportation/Traffic-Crashes-Crashes/85ca-t3if/about_data

# import the dataset for unique crashes:
crashes <- RSocrata::read.socrata("https://data.cityofchicago.org/resource/85ca-t3if.csv")
write_csv(crashes, "data/chicago_crashes.csv")

# import the dataset for individual vehicles:
vehicles <- RSocrata::read.socrata("https://data.cityofchicago.org/resource/68nd-jvt3.csv")
write_csv(cars, "data/chicago_vehicles.csv")


# import the dataset for individual persons:
persons <- RSocrata::read.socrata("https://data.cityofchicago.org/resource/u6pd-qa9d.csv")
write_csv(persons, "data/chicago_persons.csv")


