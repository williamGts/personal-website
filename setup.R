# Install required packages if not already installed
if (!requireNamespace("blogdown", quietly = TRUE)) {
  install.packages("blogdown")
}

# Install Hugo if not already installed
if (is.null(blogdown::hugo_version())) {
  blogdown::install_hugo()
}

# Clean up existing files
if (dir.exists("themes")) unlink("themes", recursive = TRUE)
if (dir.exists("public")) unlink("public", recursive = TRUE)
if (file.exists("go.mod")) file.remove("go.mod")
if (file.exists("go.sum")) file.remove("go.sum")
if (file.exists("config.yaml")) file.remove("config.yaml")
if (file.exists("config.toml")) file.remove("config.toml")

# Create new site with a simpler theme
blogdown::new_site(
  dir = ".",
  theme = "yihui/hugo-lithium",
  force = TRUE
)

# Create necessary directories if they don't exist
dirs <- c("content/project", "content/post", "static/img")
for (dir in dirs) {
  if (!dir.exists(dir)) {
    dir.create(dir, recursive = TRUE)
  }
}

# Create a sample project page
cat('---
title: "Sample Project"
date: "2024-03-20"
output: html_document
---

## Project Overview

This is a sample project page. You can use this template to showcase your other projects.

## Project Details

### What I Did
- Point 1
- Point 2
- Point 3

### Technologies Used
- Technology 1
- Technology 2
- Technology 3

### Results
[Add your project results here]

## Code Example

```r
# Add your code example here
library(tidyverse)
data <- read_csv("data.csv")
```

## Learn More

[Add links to project resources, GitHub repository, or live demo]
', file = "content/project/sample-project.Rmd")

# Serve the site
blogdown::serve_site() 