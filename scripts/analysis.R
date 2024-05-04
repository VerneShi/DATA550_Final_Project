# Load necessary libraries
library(dplyr)
library(ggplot2)
library(readr)
library(here)

# Ensure relative paths start from the project root
here::i_am("scripts/analysis.R")

# Load processed datasets
# Load the "Total" subset for analysis
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

# Summary Table stratified by age group
# Load the "Age" subset for analysis
total_data_path <- here("data/processed/Age_subset.csv")
df_age <- read_csv(total_data_path)

# Filter data for the current question
df_age_obesity <- df_age %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Summarize the data
summary_age_obesity <- df_age_obesity %>%
  group_by(Stratification1) %>%
  summarise(
    Mean = mean(Data_Value, na.rm = TRUE),
    Median = median(Data_Value, na.rm = TRUE),
    Min = min(Data_Value, na.rm = TRUE),
    Max = max(Data_Value, na.rm = TRUE),
    N = n(),
    .groups = 'drop'
  ) %>%
  # Rename Stratification1 to Age Group
  rename(`Age Group` = Stratification1)

# Save the summary statistics to the 'output' directory
write_csv(summary_age_obesity, here("output/tables/summary_age_obesity.csv"))


# Summary Table stratified by income group
# Load the "Income" subset for analysis
total_data_path <- here("data/processed/Income_subset.csv")
df_income <- read_csv(total_data_path)

# Filter data for the current question
df_income_obesity <- df_income %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Summarize the data
summary_income_obesity <- df_income_obesity %>%
  group_by(Stratification1) %>%
  summarise(
    Mean = mean(Data_Value, na.rm = TRUE),
    Median = median(Data_Value, na.rm = TRUE),
    Min = min(Data_Value, na.rm = TRUE),
    Max = max(Data_Value, na.rm = TRUE),
    N = n(),
    .groups = 'drop'
  ) %>%
  # Rename Stratification1 to Income Group
  rename(`Income Group` = Stratification1)

# Save the summary statistics to the 'output' directory
write_csv(summary_income_obesity, here("output/tables/summary_income_obesity.csv"))

# Summary Table stratified by education group
# Load the "Education" subset for analysis
total_data_path <- here("data/processed/Education_subset.csv")
df_education <- read_csv(total_data_path)

# Filter data for the current question
df_education_obesity <- df_education %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Summarize the data
summary_education_obesity <- df_education_obesity %>%
  group_by(Stratification1) %>%
  summarise(
    Mean = mean(Data_Value, na.rm = TRUE),
    Median = median(Data_Value, na.rm = TRUE),
    Min = min(Data_Value, na.rm = TRUE),
    Max = max(Data_Value, na.rm = TRUE),
    N = n(),
    .groups = 'drop'
  ) %>%
  # Rename Stratification1 to Education Group
  rename(`Education Group` = Stratification1)

# Save the summary statistics to the 'output' directory
write_csv(summary_education_obesity, here("output/tables/summary_education_obesity.csv"))

# Summary Table stratified by ethnicity group
# Load the "Ethnicity" subset for analysis
total_data_path <- here("data/processed/Ethnicity_subset.csv")
df_ethnicity <- read_csv(total_data_path)

# Filter data for the current question
df_ethnicity_obesity <- df_ethnicity %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Summarize the data
summary_ethnicity_obesity <- df_ethnicity_obesity %>%
  group_by(Stratification1) %>%
  summarise(
    Mean = mean(Data_Value, na.rm = TRUE),
    Median = median(Data_Value, na.rm = TRUE),
    Min = min(Data_Value, na.rm = TRUE),
    Max = max(Data_Value, na.rm = TRUE),
    N = n(),
    .groups = 'drop'
  ) %>%
  # Rename Stratification1 to Ethnicity Group
  rename(`Ethnicity Group` = Stratification1)

# Save the summary statistics to the 'output' directory
write_csv(summary_ethnicity_obesity, here("output/tables/summary_ethnicity_obesity.csv"))

# Summary Table stratified by gender group
# Load the "Gender" subset for analysis
total_data_path <- here("data/processed/Gender_subset.csv")
df_gender <- read_csv(total_data_path)

# Filter data for the current question
df_gender_obesity <- df_gender %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Summarize the data
summary_gender_obesity <- df_gender_obesity %>%
  group_by(Stratification1) %>%
  summarise(
    Mean = mean(Data_Value, na.rm = TRUE),
    Median = median(Data_Value, na.rm = TRUE),
    Min = min(Data_Value, na.rm = TRUE),
    Max = max(Data_Value, na.rm = TRUE),
    N = n(),
    .groups = 'drop'
  ) %>%
  # Rename Stratification1 to Gender Group
  rename(`Gender Group` = Stratification1)

# Save the summary statistics to the 'output' directory
write_csv(summary_gender_obesity, here("output/tables/summary_gender_obesity.csv"))

