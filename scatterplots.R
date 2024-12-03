# Load the dataset
health_stroke <- read.csv("~/Downloads/health_stroke.csv")
# Check the dataset
head(health_stroke)
colnames(health_stroke)

# Define scatter plot function
scatter_plot <- function(x, y, xlab, ylab, main) {
  dev.new()  # Open a new plotting window
  plot(x, y, pch=20, col="blue", xlab=xlab, ylab=ylab, main=main)
}

# Set up the plot layout
par(mfrow=c(2,2))  # 2x2 grid

# Create scatter plots
scatter_plot(health_stroke$age, health_stroke$avg_glucose_level, xlab="Age", ylab="Average Glucose Level", main="Age vs Average Glucose Level")
scatter_plot(health_stroke$hypertension, health_stroke$stroke, xlab="Hypertension", ylab="Stroke", main="Hypertension vs Stroke")
scatter_plot(health_stroke$heart_disease, health_stroke$stroke, xlab="Heart Disease", ylab="Stroke", main="Heart Disease vs Stroke")
scatter_plot(health_stroke$bmi, health_stroke$avg_glucose_level, xlab="BMI", ylab="Avg Glucose Level", main="BMI vs Avg Glucose Level")
