---
title: Statistical Analysis Project
date: 2024-03-20
draft: false
description: A comprehensive statistical analysis of public health data
tags:
  - R
  - Statistics
  - Data Analysis
categories:
  - Projects
image:
  caption: Project screenshot
  focal_point: Smart
  preview_only: false
---

## Project Overview

This project demonstrates my skills in statistical analysis and data visualization using R. I analyzed a public health dataset to identify trends and correlations between various health indicators.

## Project Details

### What I Did
- Performed exploratory data analysis on a large public health dataset
- Applied statistical methods to identify significant correlations
- Created visualizations to communicate findings effectively
- Developed predictive models to forecast health outcomes

### Technologies Used
- R and RStudio
- tidyverse packages for data manipulation
- ggplot2 for data visualization
- Statistical modeling techniques
- Markdown for documentation

### Results
The analysis revealed several significant correlations between socioeconomic factors and health outcomes. The visualizations created helped to communicate these findings to non-technical stakeholders, and the predictive models achieved an accuracy of 85%.

## Code Example

```R
# Example of data analysis code
library(tidyverse)
library(ggplot2)

# Load and clean data
health_data <- read_csv("health_data.csv") %>%
  filter(!is.na(income)) %>%
  mutate(income_group = case_when(
    income < 30000 ~ "Low",
    income < 60000 ~ "Medium",
    TRUE ~ "High"
  ))

# Create visualization
ggplot(health_data, aes(x = income_group, y = health_score, fill = income_group)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    title = "Health Scores by Income Group",
    x = "Income Group",
    y = "Health Score"
  )
```

## Learn More

This is a sample project. In a real portfolio, I would include links to:
- The full project repository on GitHub
- A detailed report or paper
- Interactive visualizations
- Live demo (if applicable) 