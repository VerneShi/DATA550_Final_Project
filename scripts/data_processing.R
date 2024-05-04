library(here)
library(dplyr)
library(readr)

# Ensure here is correctly initialized
here::i_am("scripts/data_processing.R")

# Adjust paths using here()
data_url <- here("data/raw/US_Nutrition_Data.csv")
data <- read.csv(data_url, header = TRUE)

# Basic data cleaning
df_clean <- data %>%
  filter(!is.na(Data_Value)) # Remove rows with NA in Data_Value

# Split the cleaned data based on StratificationCategory1 for further analysis
sub_datasets <- split(df_clean, df_clean$StratificationCategory1)

# Resetting the "index" (row names) for each subset and save them
# Function to write datasets with no console output
suppress_output <- function(datasets) {
  invisible(
    lapply(names(datasets), function(name) {
        subset_path <- here("data/processed", paste0(name, "_subset.csv"))
        # Use write.csv if write_csv produces unwanted output or errors
        write.csv(datasets[[name]], subset_path, row.names = FALSE)
    })
  )
}

# Execute the function with your sub_datasets
suppress_output(sub_datasets)