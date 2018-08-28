FROM rocker/shiny

# Install the Nginx
RUN apt-get update && apt-get install -y nginx libssl-dev libgit2-dev libxml2-dev

# Install R packages
RUN R -e "install.packages(c('devtools', 'tidyverse', 'data.table', 'fs', 'shinydashboard', 'yaml', 'readxl', 'DT', 'googleCloudStorageR', 'futile.logger', 'Hmisc'))"