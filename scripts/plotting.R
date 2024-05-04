# Load necessary libraries
library(ggplot2)
library(readr)
library(dplyr)
library(here)

# Ensure relative paths start from the project root
here::i_am("scripts/plotting.R")

# Load the "Total" subset for analysis
total_data_path <- here("data/processed/Total_subset.csv")
df_total <- read_csv(total_data_path)

# Prepare data for "Percent of adults aged 18 years and older who have obesity"
obesity_data <- df_total %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity") %>%
  select(YearEnd, Data_Value)

obesity_data$YearEnd <- factor(obesity_data$YearEnd)

# Generate a plot
obesity_trend_plot <- ggplot(obesity_data, aes(x = YearEnd, y = Data_Value, fill = YearEnd)) +
  geom_boxplot() +
  labs(title = "Trend of Obesity Over Years",
       x = "YearEnd",
       y = "Percentage of Adults with Obesity") +
  scale_fill_discrete(name = "Year") +  # Legend title
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), plot.title = element_text(size = 10))

# Save the plot
plot_path <- here("output/figures/obesity_trend_plot.png")
ggsave(plot_path, plot = obesity_trend_plot, width = 8, height = 6)


# By age group
# Load the "Age" subset for analysis
total_data_path <- here("data/processed/Age_subset.csv")
df_age <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_age_obesity <- df_age %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Generate a plot
obesity_age_plot <- ggplot(df_age_obesity, aes(x = Data_Value, fill = Stratification1)) +
  geom_density(alpha = 0.5) +  # Using density plot, adjust transparency with alpha
  labs(title = "Distribution for Obesity by Age Group",
       x = "Percentage of Adults with Obesity",
       y = "Density") +
  theme_minimal() +  # Clean theme
  scale_fill_discrete(name = "Age Group") +  # Legend title
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Improve x-axis label readability
        plot.title = element_text(size = 10))  # Set title font size smaller

# Save the plot
plot_path <- here("output/figures/obesity_age_plot.png")
ggsave(plot_path, plot = obesity_age_plot, width = 8, height = 6)


# By income group
# Load the "Income" subset for analysis
total_data_path <- here("data/processed/Income_subset.csv")
df_income <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_income_obesity <- df_income %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Generate a plot
obesity_income_plot <- ggplot(df_income_obesity, aes(x = Data_Value, fill = Stratification1)) +
  geom_density(alpha = 0.5) +  # Using density plot, adjust transparency with alpha
  labs(title = "Distribution for Obesity by Income Group",
       x = "Percentage of Adults with Obesity",
       y = "Density") +
  theme_minimal() +  # Clean theme
  scale_fill_discrete(name = "Income Group") +  # Legend title
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Improve x-axis label readability
        plot.title = element_text(size = 10))  # Set title font size smaller

# Save the plot
plot_path <- here("output/figures/obesity_income_plot.png")
ggsave(plot_path, plot = obesity_income_plot, width = 8, height = 6)


# By education group
# Load the "Education" subset for analysis
total_data_path <- here("data/processed/Education_subset.csv")
df_education <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_education_obesity <- df_education %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Generate a plot
obesity_education_plot <- ggplot(df_education_obesity, aes(x = Data_Value, fill = Stratification1)) +
  geom_density(alpha = 0.5) +  # Using density plot, adjust transparency with alpha
  labs(title = "Distribution for Obesity by Education Group",
       x = "Percentage of Adults with Obesity",
       y = "Density") +
  theme_minimal() +  # Clean theme
  scale_fill_discrete(name = "Education Group") +  # Legend title
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Improve x-axis label readability
        plot.title = element_text(size = 10))  # Set title font size smaller

# Save the plot
plot_path <- here("output/figures/obesity_education_plot.png")
ggsave(plot_path, plot = obesity_education_plot, width = 8, height = 6)


# By ethnicity group
# Load the "Ethnicity" subset for analysis
total_data_path <- here("data/processed/Ethnicity_subset.csv")
df_ethnicity <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_ethnicity_obesity <- df_ethnicity %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Generate a plot
obesity_ethnicity_plot <- ggplot(df_ethnicity_obesity, aes(x = Data_Value, fill = Stratification1)) +
  geom_density(alpha = 0.5) +  # Using density plot, adjust transparency with alpha
  labs(title = "Distribution for Obesity by Ethnicity Group",
       x = "Percentage of Adults with Obesity",
       y = "Density") +
  theme_minimal() +  # Clean theme
  scale_fill_discrete(name = "Ethnicity Group") +  # Legend title
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Improve x-axis label readability
        plot.title = element_text(size = 10))  # Set title font size smaller

# Save the plot
plot_path <- here("output/figures/obesity_ethnicity_plot.png")
ggsave(plot_path, plot = obesity_ethnicity_plot, width = 8, height = 6)


# By gender group
# Load the "Gender" subset for analysis
total_data_path <- here("data/processed/Gender_subset.csv")
df_gender <- read_csv(total_data_path)

# Filter data for "Percent of adults aged 18 years and older who have obesity"
df_gender_obesity <- df_gender %>%
  filter(Question == "Percent of adults aged 18 years and older who have obesity")

# Generate a plot
obesity_gender_plot <- ggplot(df_gender_obesity, aes(x = Data_Value, fill = Stratification1)) +
  geom_density(alpha = 0.5) +  # Using density plot, adjust transparency with alpha
  labs(title = "Distribution for Obesity by Gender Group",
       x = "Percentage of Adults with Obesity",
       y = "Density") +
  theme_minimal() +  # Clean theme
  scale_fill_discrete(name = "Gender Group") +  # Legend title
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Improve x-axis label readability
        plot.title = element_text(size = 10))  # Set title font size smaller

# Save the plot
plot_path <- here("output/figures/obesity_gender_plot.png")
ggsave(plot_path, plot = obesity_gender_plot, width = 8, height = 6)
