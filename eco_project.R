#Title: Eco Final Project
#Author: JP Flores
#Date: 04/26/2021

#Install Packages 
library(tidyverse)
library(janitor)
library(ggpubr)

# Read in the data
Ecology_2021_Data_sheet_for_R <- read_csv("Ecology 2021-Data sheet - for R.csv")
clean_names(Ecology_2021_Data_sheet_for_R)
data <- Ecology_2021_Data_sheet_for_R
# prelim data 
data %>% 
  ggplot(aes(x = `Dependent variable (Ratio of sexual to asexual)`, y = `Independent variable (PAR) (μmol cm-2 s−1)`)) +
  geom_point() +
  geom_smooth() +
  labs(x = "Ratio of Sexual:Asexual Reproduction",
       y = "PAR (μmol cm-2 s−1)",
       title = "Relationship Between PAR and Ratio of Sexual/Vegetative Reproduction",
       subtitle = "n=50",
       caption = "Created in RStudio") +
theme_classic2() +
  theme(plot.title.position = "plot",
        plot.caption = element_text(size = 7, face = "italic"),
        plot.caption.position = "plot",
        plot.subtitle = element_text(size = 12))
