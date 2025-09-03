## Homework 1. 

### Question 1. 
1. Show that $\beta_0$ is unbiased

$$
\begin{align*}
y_i &= \beta_0 + \beta_1x_i + \epsilon_i\\
\operatorname{E}(\beta_0) &= \operatorname{E}(y_i - \beta_1 x_i - \epsilon_i)\\
\operatorname{E}(\beta_0) &= \operatorname{E}(y_i) - \beta_1\operatorname{E}(x_i) - \operatorname{E}(\epsilon_i)\\
\operatorname{E}(\beta_0) &= \bar{y} - \beta_1\bar{x} - 0\\
\operatorname{E}(\beta_0) &= \bar{y} - \beta_1\bar{x}\\
\operatorname{E}(\beta_0) &= \beta_0 \\
\beta_0  &= \bar{y} - \beta_1\bar{x}
\end{align*}
$$



$$
\begin{align*}
\hat{\beta_0} &= \bar{y} - \hat{\beta_1}\bar{x} \\
\operatorname{\operatorname{E}}(\hat{\beta_0}) &= \operatorname{E}(\bar{y} - \hat{\beta_1}\bar{x}) \\
\operatorname{E}(\hat{\beta_0}) &= \operatorname{E}(\bar{y}) - \operatorname{E}(\hat{\beta_1}\bar{x}) \\
\operatorname{E}(\hat{\beta_0}) &= \bar{y} - \bar{x}\operatorname{E}(\hat{\beta_1}) \\
\operatorname{E}(\hat{\beta_1}) &= \beta_1 \qquad \qquad \text{\footnotesize (we showed this in class)} \\
\operatorname{E}(\hat{\beta_0}) &= \bar{y} - \beta_1\bar{x} \\
\operatorname{E}(\hat{\beta_0}) &= \beta_0
\end{align*}
$$

2. Determine the variance of $\beta_0$

$$
\begin{align*}
\operatorname{Var}(X+Y) &= \operatorname{Var}(X) + \operatorname{Var}(Y) + 2\operatorname{Cov}(X,Y)
\end{align*}
$$ 

$$
\begin{align*}
\hat{\beta_0} &= \bar{y} - \hat{\beta_1}\bar{x} \qquad \qquad \text{\footnotesize (from class)} \\
\operatorname{Var}(\hat{\beta_0}) &= \operatorname{Var}(\bar{y} - \hat{\beta_1}\bar{x}) \\
\operatorname{Var}(\hat{\beta_0}) &= \operatorname{Var}(\bar{y}) + \operatorname{Var}(\hat{\beta_1}\bar{x}) + 2\operatorname{Cov}(\bar{y}, -\hat{\beta_1}\bar{x})
\end{align*}
$$


$$
\begin{align*}
\bar{y} &= \frac{1}{n}\sum_{i=1}^{n} y_i \\ 
\operatorname{Var}(\bar{y}) &= \operatorname{Var}( \frac{1}{n}\sum_{i=1}^{n} y_i )\\
\operatorname{Var}(\bar{y}) &= (\frac{1}{n})^2\sum_{i=1}^{n}\operatorname{Var}(y_i)\\
\operatorname{Var}(\bar{y}) &= (\frac{1}{n})^2\sum_{i=1}^{n}\operatorname{Var}(\beta_0 + \beta_1x_i + \epsilon_i)\\ 
\operatorname{Var}(\bar{y}) &= (\frac{1}{n})^2\sum_{i=1}^{n}\operatorname{Var}(\beta_0) + \operatorname{Var}(\beta_1x_i) + \operatorname{Var}(\epsilon_i)\\ 
\operatorname{Var}(\bar{y}) &= (\frac{1}{n})^2\sum_{i=1}^{n} 0 + 0 +\sigma^2\\
\operatorname{Var}(\bar{y}) &=  (\frac{1}{n})^2 . (n\sigma^2)\\
\operatorname{Var}(\bar{y}) &= \frac{\sigma^2}{n}
\end{align*}
$$

$$
\begin{align*}
\operatorname{Var}(-\beta_1\bar{x}) &= (-\bar{x})^2\operatorname{Var}( \hat{\beta_1} )\\
\operatorname{Var}(-\beta_1\bar{x}) &= (-\bar{x})^2\operatorname{Var}( \hat{\beta_1} )\\
\operatorname{Var}(-\beta_1\bar{x}) &= (-\bar{x})^2 \frac{\sigma^2}{\sum_{i=1}^{n}(x_i - \bar{x})} \qquad \qquad \text{\footnotesize (we showed this in class)}\\
\end{align*}
$$


$$
\begin{align*}
\operatorname{Var}(\hat{\beta_0}) = \operatorname{Var}(\bar{y}) + \operatorname{Var}(\hat{\beta_1}\bar{x})\\
\boxed{\operatorname{Var}(\hat{\beta_0}) = \frac{\sigma^2}{n} + \bar{x}^2 \frac{\sigma^2}{\sum_{i=1}^{n}(x_i - \bar{x})} }
\end{align*}
$$
