health_stroke <- read.csv("~/Downloads/health_stroke.csv")
# Display the gender, age, and smoking_status columns
subset_data <- health_stroke[, c("gender", "age", "smoking_status")]
print(subset_data)
