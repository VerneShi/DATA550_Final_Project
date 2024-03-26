# Load necessary libraries
library(dplyr)
library(ggplot2)
library(readr)
library(here)

# Ensure relative paths start from the project root
here::i_am("scripts/analysis.R")

# Load processed datasets
# Example: Load the "Total" subset for analysis
total_data_path <- here("data/processed/Total_subset.csv")
df_total <- read_csv(total_data_path)

# Conducting a simple descriptive analysis on the "Total" subset
# Summarize data with basic statistics
summary_stats <- df_total %>%
  group_by(Question) %>%
  summarise(
    Mean = mean(Data_Value, na.rm = TRUE),
    SD = sd(Data_Value, na.rm = TRUE),
    Median = median(Data_Value, na.rm = TRUE),
    IQR = IQR(Data_Value, na.rm = TRUE),
    Min = min(Data_Value, na.rm = TRUE),
    Max = max(Data_Value, na.rm = TRUE)
  )

# Save the summary statistics to the 'output' directory
write_csv(summary_stats, here("output/tables/summary_stats_total.csv"))

# Prepare data for a distribution plot for a specific question
# Example question: "Percent of adults aged 18 years and older who have obesity"
obesity_data <- df_total %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity") %>%
  select(YearEnd, Data_Value)

# Save the prepared data for plotting
write_csv(obesity_data, here("output/analysis/obesity_data_for_plot.csv"))

