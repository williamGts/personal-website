# Personal Website

This is my personal website built with R Markdown and Hugo, using the Academic theme.

## Setup Instructions

1. Install R and RStudio
2. Install required R packages:
   ```R
   install.packages("blogdown")
   blogdown::install_hugo()
   ```
3. Clone this repository
4. Open the RStudio project
5. Run `blogdown::serve_site()` to preview locally

## Development

- Edit content in the `content/` directory
- Add projects to `content/project/`
- Update personal information in `config.yaml`
- Add images to `static/img/`

## Deployment

This site is automatically deployed to Netlify when changes are pushed to the main branch.

## License

MIT License 