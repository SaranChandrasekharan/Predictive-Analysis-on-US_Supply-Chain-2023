#linear regression
data <- read.csv("US Supply Chain Risk Analysis.csv")
getwd()
model_lm <- lm(Order_Value_USD ~ Quantity_Ordered, data = data)
summary(model_lm)
res_lm <- residuals(model_lm)
# Shapiro–Wilk test
shapiro.test(res_lm)

modellm2 <- lm(log(Order_Value_USD) ~ Quantity_Ordered,
               data = data)
res_lm2 <- residuals(modellm2)
shapiro.test(res_lm2)

summary(model)

library(ggplot2)
ggplot(data = data, aes(x=Quantity_Ordered, y=Order_Value_USD)) +
  geom_point() +
  geom_smooth(method = "lm", se=FALSE)


