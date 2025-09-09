library(AER)     # loads the Applied Econometrics with R package
data("USJudgeRatings", package = "AER")
df <- USJudgeRatings

# Data Prep
Y   <- df$RTEN
X   <- df$PREP

plot(X, Y, xlab = 'Average Trial Preparation', ylab = 'Average Retention Rating', pch = 16)

# Creating the linear model
model   <- lm(Y ~ X)
coef(model)

plot(X, Y, xlab = 'Average Trial Preparation', ylab = 'Average Retention Rating', pch = 16, col = 'gray')
abline(a = coef(model)[1], b = coef(model)[2], lwd = 2, col = 'darkblue')

summary(model)
