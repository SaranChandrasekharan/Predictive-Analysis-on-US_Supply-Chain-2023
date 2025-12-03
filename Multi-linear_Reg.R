# Multiple Linear Regression
model <- lm(data$Order_Value_SKU ~ data$SKU + data$Historical_Disruption_Count+data$Supplier_Reliability_Score+
              data$Communication_Cost_MB
              ,
            data = data)
summary(model)
# Residual normality
res <- residuals(model)

# QQ plot
qqnorm(res)
qqline(res, col = "red")

# Shapiro–Wilk test
shapiro.test(res)

model2 <- lm(log(Order_Value_USD) ~ Quantity_Ordered +
               Historical_Disruption_Count +
               Supplier_Reliability_Score +
               Communication_Cost_MB,
             data = data)
res2 <- residuals(model2)
shapiro.test(res2)


summary(model)
vif(model)
