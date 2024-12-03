

# Clean the data by removing rows with NA values
CleanData <- function(data) {
  clean_data <- na.omit(data[, c("gender", "age", "smoking_status", "stroke")])
  return(clean_data)
}

# Categorize age into groups
CategorizeAge <- function(data) {
  data$age_group <- cut(data$age,
                        breaks = c(0, 30, 40, 50, 60, 70, 80, 90, 100),
                        labels = c("0-30", "31-40", "41-50", "51-60", "61-70", "71-80", "81-90", "91-100"),
                        right = FALSE)
  return(data)
}

# Gender vs Stroke Bar Plot
PlotGenderVsStroke <- function(data) {
  gender_stroke <- table(data$gender, data$stroke)
  barplot(gender_stroke, beside = TRUE, col = c("skyblue", "salmon"),
          legend = c("No Stroke", "Stroke"),
          main = "Gender vs Stroke", xlab = "Gender", ylab = "Count")
}

# Smoking Status vs Stroke Bar Plot
PlotSmokingVsStroke <- function(data) {
  smoking_stroke <- table(data$smoking_status, data$stroke)
  barplot(smoking_stroke, beside = TRUE, col = c("lightgreen", "lightcoral"),
          legend = c("No Stroke", "Stroke"),
          main = "Smoking Status vs Stroke", xlab = "Smoking Status", ylab = "Count")
}

# Age Group vs Stroke Bar Plot
PlotAgeVsStroke <- function(data) {
  age_stroke <- table(data$age_group, data$stroke)
  barplot(age_stroke, beside = TRUE, col = c("lightblue", "lightpink"),
          legend = c("No Stroke", "Stroke"),
          main = "Age Group vs Stroke", xlab = "Age Group", ylab = "Count")
}

# Call all plot functions
PlotAllGraphs <- function(data) {
  par(mfrow = c(2, 2))  # 2x2 grid for plots

  # Gender vs Stroke plot
  PlotGenderVsStroke(data)

  # Smoking Status vs Stroke plot
  PlotSmokingVsStroke(data)

  # Age vs Stroke plot
  PlotAgeVsStroke(data)
}

