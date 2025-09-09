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

<div style="page-break-after: always;"></div>

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
\operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x}) &= \bar{x}\operatorname{Cov}(\bar{y}, \hat{\beta_1})\\
\operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x}) &= \bar{x}\operatorname{Cov}(\frac{1}{n}\sum_{i=1}^{n}y_i, \frac{\sum_{i=1}^{n}(x_i - \bar{x})(y_i - \bar{y})}{\sum_{i=1}^{n}(x_i - \bar{x})^2}) \qquad \qquad \text{\footnotesize (definition from class notes)}\\
\operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x}) &= \bar{x} \cdot \frac{1}{n\sum_{i=1}^{n}(x_i - \bar{x})^2}\operatorname{Cov}(\sum_{i=1}^{n}y_i, \sum_{i=1}^{n}(x_i - \bar{x})(y_i - \bar{y}))\\
\operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x}) &= \bar{x} \cdot \frac{1}{n\sum_{i=1}^{n}(x_i - \bar{x})^2}\operatorname{Cov}(\sum_{i=1}^{n}y_i, \sum_{i=1}^{n}(x_i - \bar{x})(y_i) - \bar{y}\sum_{i=1}^{n}(x_i - \bar{x}))\\
\operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x}) &= \bar{x} \cdot \frac{1}{n\sum_{i=1}^{n}(x_i - \bar{x})^2}\operatorname{Cov}(\sum_{i=1}^{n}y_i, \sum_{i=1}^{n}(x_i - \bar{x})(y_i)) \qquad \text{\footnotesize (special zero from class)}\\
\operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x}) &= \bar{x} \cdot \frac{1}{n\sum_{i=1}^{n}(x_i - \bar{x})^2}\sum_{i=1}^{n}(x_i - \bar{x})\sum_{i=1}^{n}\operatorname{Cov}(y_i, y_i) \\
\sum_{i=1}^{n}(x_i - \bar{x}) &=0 \\
\operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x}) &= 0 \\
\end{align*}
$$



$$
\begin{align*}
\operatorname{Var}(\hat{\beta_0}) = \operatorname{Var}(\bar{y}) + \operatorname{Var}(\hat{\beta_1}\bar{x}) + \operatorname{Cov}(\bar{y}, \hat{\beta_1}\bar{x})\\
\operatorname{Var}(\hat{\beta_0}) = \operatorname{Var}(\bar{y}) + \operatorname{Var}(\hat{\beta_1}\bar{x}) + 0\\
\boxed{\operatorname{Var}(\hat{\beta_0}) = \frac{\sigma^2}{n} + \bar{x}^2 \frac{\sigma^2}{\sum_{i=1}^{n}(x_i - \bar{x})} }
\end{align*}
$$

<div style="page-break-after: always;"></div>

3(a). Show that $\sum_{i=1}^{n}\hat{y_i} \cdot e_i = 0$

$$
\begin{align*}
\sum_{i=1}^{n}\hat{y_i} \cdot e_i &= 0\\
\sum_{i=1}^{n} (\hat{\beta_0} + \hat{\beta_1}x_i)(e_i) &=0\\
\sum_{i=1}^{n} \hat{\beta_0}(e_i)  + \hat{\beta_1}(x_i) (e_i)&=0 \\
\sum_{i=1}^{n} \hat{\beta_0}(e_i)  + \sum_{i=1}^{n} \hat{\beta_1}(x_i) (e_i)&=0 \\
\hat{\beta_0}\sum_{i=1}^{n} (e_i)  + \hat{\beta_1}\sum_{i=1}^{n} (x_i) (e_i)&=0 \\
\sum_{i=1}^{n} (e_i)&= 0 \qquad \qquad \text{\footnotesize (from property 1)}\\
\sum_{i=1}^{n} (x_i) (e_i)&= 0 \qquad \qquad \text{\footnotesize (from property 4)}\\
\hat{\beta_0} \cdot 0  + \hat{\beta_1} \cdot 0 &=0 \\
0 &= 0
\end{align*}
$$


3(b). Show that regression line passes through $(\bar{x}, \bar{y})$

$$
\begin{align*}
\hat{y_i} &= \hat{\beta_0} + \hat{\beta_1}x_i \\
\text{let } x_i &= \bar{x} \\
\hat{y_i} &= \hat{\beta_0} + \hat{\beta_1}\bar{x} \\
\hat{y_i} &= \bar{y} - \beta_1\bar{x} + \hat{\beta_1}\bar{x} \qquad \qquad \text{\footnotesize (from normal equations)}\\ 
\hat{y_i} &= \bar{y} \\
\end{align*}
$$
$$
\text{this shows that the regression line passes through } (\bar{x}, \bar{y})
$$

<div style="page-break-after: always;"></div>
