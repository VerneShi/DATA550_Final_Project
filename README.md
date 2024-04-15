# Data 550 Final Project

## Overview

This project explores obesity trends in the United States using data from the Behavioral Risk Factor Surveillance System. Through detailed data analysis and visualization, it examines the relationship between obesity rates and various behavioral factors across different demographic and socioeconomic stratifications from 2011 to 2022. The final report includes a comprehensive analysis of obesity trends, with summary tables and distribution plots highlighting key findings.

## Project Setup

To replicate the computing environment necessary to run this project, follow these steps:

1. Clone this repository to your local machine.
2. Ensure that you have R installed on your system.
3. Navigate to the project directory and run `make install` from the terminal. This will set up the R environment using the `renv` package.

For more details on using `renv`, see the [renv documentation](https://rstudio.github.io/renv/articles/renv.html).

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
