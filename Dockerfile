FROM rocker/r-ubuntu

RUN apt-get update && apt-get install -y pandoc

RUN mkdir /project
WORKDIR /project

RUN mkdir data
RUN mkdir scripts
RUN mkdir output
RUN mkdir renv

COPY data data
COPY scripts scripts
COPY output output
COPY renv renv
COPY Makefile . 
COPY final_report.rmd . 

COPY final_project_github.Rproj . 
COPY .Rprofile .
COPY renv.lock .
COPY renv/activate.R renv
COPY renv/settings.json renv

RUN Rscript -e "renv::restore(prompt = FALSE)"

RUN mkdir final_report
CMD make report && move final_report.html final_report