# Report-associated rules
install:
	@echo "Restoring R package environment..."
	Rscript -e 'renv::restore()'
	
report: pre_analysis
	Rscript -e "rmarkdown::render('final_report.rmd')"

pre_analysis:
	Rscript scripts/data_processing.R
	Rscript scripts/analysis.R
	Rscript scripts/plotting.R
	Rscript scripts/ANOVA.R
	
.PHONY: clean
clean:
	rm -f output/figures/*.png
	rm -f output/tables/*.csv
	rm -f output/analysis/*.RData
	
# DOCKER-associated rules
PROJECTFILES = final_report.rmd scripts/data_processing.R scripts/analysis.R scripts/plotting.R scripts/ANOVA.R Makefile
RENVFILES = renv.lock renv/activate.R renv/settings.json

# rule to build image
project_image: Dockerfile $(PROJECTFILES) $(RENVFILES)
	docker build -t yiweishi/data550_final_project . 
	touch $@
	
# rule to build the report automatically in our container
final_report/final_report.html: project_image
	docker run -v "/$(pwd)/final_report":/project/final_report yiweishi/data550_final_project
