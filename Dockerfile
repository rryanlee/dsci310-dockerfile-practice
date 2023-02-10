FROM rocker/rstudio:4.1.3 

RUN Rscript -e "install.packages('renv', repos='https://cran.us.r-project.org')"
RUN Rscript -e "install.packages('remotes', repos='https://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('cowsay', '0.8.0')"
RUN Rscript -e "library('cowsay')"


