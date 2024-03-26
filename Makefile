report: pre_analysis
	Rscript -e "rmarkdown::render('final_report.Rmd')"

pre_analysis:
	Rscript scripts/data_processing.R
	Rscript scripts/analysis.R
	Rscript scripts/plotting.R
	
clean:
	rm -f output/figures/*.png
	rm -f output/tables/*.csv