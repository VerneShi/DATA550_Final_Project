# Data 550 Final Project

## Overview

This project explores obesity trends in the United States using data from the Behavioral Risk Factor Surveillance System. Through detailed data analysis and visualization, it examines the relationship between obesity rates and various behavioral factors across different demographic and socioeconomic stratifications from 2011 to 2022. The final report includes a comprehensive analysis of obesity trends, with summary tables and distribution plots highlighting key findings.

## Generating the Final Report

The final report is generated from the `final_report.Rmd` document, which compiles the analysis results, including tables and figures, into a cohesive narrative. To generate the report:

1. Ensure all prerequisites are installed.
2. Open a terminal and navigate to the project's root directory.
3. Execute the command `make all`. This will run the data processing, analysis, and plotting scripts, followed by knitting the `final_report.Rmd` into an HTML or PDF document.

### Contents of the Final Report

The report includes:

- An introduction to the dataset and research objectives.
- A data processing section detailing the cleaning and preparation steps.
- Descriptive analysis findings, with summary tables highlighting key statistics.
- Visualizations of obesity trends over time and across various stratifications.
- Conclusions and potential areas for further research.

### Key Components

- **Summary Tables**: Generated in the `analysis.R` script, summary tables provide an overview of key statistics for each stratification. These tables are saved in the `output/tables` directory.
  
- **Figures**: The main figure illustrating the trend of obesity over the years is created in the `plotting.R` script. This and other figures are saved in the `output/figures` directory.
