health_stroke <- read.csv("~/Downloads/health_stroke.csv")
# Clean the data
health_stroke_clean <- na.omit(health_stroke[, c("gender", "age", "smoking_status", "stroke")])

# Categorize
health_stroke_clean$age_group <- cut(health_stroke_clean$age,
                                     breaks = c(0, 30, 40, 50, 60, 70, 80, 90, 100),
                                     labels = c("0-30", "31-40", "41-50", "51-60", "61-70", "71-80", "81-90", "91-100"),
                                     right = FALSE)

# Create bar plots
par(mfrow = c(2, 2))

# Gender vs Stroke
gender_stroke <- table(health_stroke_clean$gender, health_stroke_clean$stroke)
barplot(gender_stroke, beside = TRUE, col = c("skyblue", "salmon"),
        legend = c("No Stroke", "Stroke"),
        main = "Gender vs Stroke", xlab = "Gender", ylab = "Count")

# Smoking Status vs Stroke
smoking_stroke <- table(health_stroke_clean$smoking_status, health_stroke_clean$stroke)
barplot(smoking_stroke, beside = TRUE, col = c("lightgreen", "lightcoral"),
        legend = c("No Stroke", "Stroke"),
        main = "Smoking Status vs Stroke", xlab = "Smoking Status", ylab = "Count")

# Age Group vs Stroke
age_stroke <- table(health_stroke_clean$age_group, health_stroke_clean$stroke)
barplot(age_stroke, beside = TRUE, col = c("lightblue", "lightpink"),
        legend = c("No Stroke", "Stroke"),
        main = "Age Group vs Stroke", xlab = "Age Group", ylab = "Count")
