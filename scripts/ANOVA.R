library(here)
library(dplyr)
library(ggplot2)
library(readr)
library(car)

# Ensure relative paths start from the project root
here::i_am("scripts/ANOVA.R")

# By age group
# Load the "Age" subset for analysis
total_data_path <- here("data/processed/Age_subset.csv")
df_age <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_age_obesity <- df_age %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

result <- aov(Data_Value ~ Stratification1, data = df_age_obesity)
summary_df <- summary(result)

save(summary_df, file = here("output/analysis/ANOVA_age_obesity.RData"))


# By income group
# Load the "Income" subset for analysis
total_data_path <- here("data/processed/Income_subset.csv")
df_income <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_income_obesity <- df_income %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

result <- aov(Data_Value ~ Stratification1, data = df_income_obesity)
summary_df <- summary(result)

save(summary_df, file = here("output/analysis/ANOVA_income_obesity.RData"))


# By education group
# Load the "Education" subset for analysis
total_data_path <- here("data/processed/Education_subset.csv")
df_education <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_education_obesity <- df_education %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

result <- aov(Data_Value ~ Stratification1, data = df_education_obesity)
summary_df <- summary(result)

save(summary_df, file = here("output/analysis/ANOVA_education_obesity.RData"))


# By ethnicity group
# Load the "Ethnicity" subset for analysis
total_data_path <- here("data/processed/Ethnicity_subset.csv")
df_ethnicity <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_ethnicity_obesity <- df_ethnicity %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

result <- aov(Data_Value ~ Stratification1, data = df_ethnicity_obesity)
summary_df <- summary(result)

save(summary_df, file = here("output/analysis/ANOVA_ethnicity_obesity.RData"))


# By gender group
# Load the "Gender" subset for analysis
total_data_path <- here("data/processed/Gender_subset.csv")
df_gender <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_gender_obesity <- df_gender %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

result <- aov(Data_Value ~ Stratification1, data = df_gender_obesity)
summary_df <- summary(result)

save(summary_df, file = here("output/analysis/ANOVA_gender_obesity.RData"))