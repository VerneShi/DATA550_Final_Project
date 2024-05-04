install:
	@echo "Restoring R package environment..."
	Rscript -e 'renv::restore()'
	
report: pre_analysis
	Rscript -e "rmarkdown::render('final_report.Rmd')"

pre_analysis:
	Rscript scripts/data_processing.R
	Rscript scripts/analysis.R
	Rscript scripts/plotting.R
	Rscript scripts/ANOVA.R
	
clean:
	rm -f output/figures/*.png
	rm -f output/tables/*.csv
	rm -f output/analysis/*.RData