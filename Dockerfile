FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('renv', repos =c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "install.packages('remotes', repos =c(CRAN = 'https://cloud.r-project.org'))" # use this to install packages with specific versions

# COPY renv.lock /home/rstudio/renv.lock # need renv.lock in my local working directory