# Load necessary libraries
library(ggplot2)
library(readr)
library(here)

# Ensure relative paths start from the project root
here::i_am("scripts/plotting.R")

# Load the data prepared for plotting by analysis.R
obesity_data_path <- here("output/analysis/obesity_data_for_plot.csv")
obesity_data <- read_csv(obesity_data_path)

# Generate a plot
obesity_trend_plot <- ggplot(obesity_data, aes(x = YearEnd, y = Data_Value)) +
  geom_line() +
  geom_point() +
  labs(title = "Trend of Obesity Over Years",
       x = "Year", y = "Percentage of Adults with Obesity") +
  theme_minimal()

# Save the plot
plot_path <- here("output/figures/obesity_trend_plot.png")
ggsave(plot_path, plot = obesity_trend_plot, width = 8, height = 6)
