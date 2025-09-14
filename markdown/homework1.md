## Homework 1. 

### Theory
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


4. Derive the MLE of $\sigma^2$

$$
\begin{aligned}
y_i &= \beta_0 + \beta_1 x_i + \varepsilon_i, \quad && i = 1, \ldots, n, \\[6pt]
\varepsilon_i &= y_i - \beta_0 - \beta_1 x_i, \\[6pt]
\varepsilon_i &\sim \mathcal{N}(0, \sigma^2), \\[6pt]
y_i - \beta_0 - \beta_1 x_i &\sim \mathcal{N}(0, \sigma^2)\\
L(\beta_0,\beta_1,\sigma^2 \mid \{(x_i,y_i)\}_{i=1}^n)
&= \prod_{i=1}^n \frac{1}{\sqrt{2\pi\sigma^2}}
\exp\!\left(-\frac{(y_i-\beta_0-\beta_1 x_i)^2}{2\sigma^2}\right)\\
L &= (2\pi\sigma^2)^{-n/2}\exp\!\left(-\frac{1}{2\sigma^2}\sum_{i=1}^n (y_i-\beta_0-\beta_1 x_i)^2\right) \\
\ln L &= -\frac{n}{2} \log(2\pi\sigma^2) - \frac{1}{2\sigma^2} \sum_{i=1}^n (y_i - \beta_0 - \beta_1 x_i)^2 \\
\frac{\partial \ln L}{\partial \sigma^2} &= -\frac{n}{2\sigma^2} + \frac{1}{2(\sigma^2)^2}\sum_{i=1}^n \bigl(y_i - \beta_0 - \beta_1 x_i\bigr)^2 \\
\frac{\partial \ln L}{\partial \sigma^2} &= 0\\ 
0 &= -\frac{n}{2\sigma^2} + \frac{1}{2(\sigma^2)^2}\sum_{i=1}^n \bigl(y_i - \beta_0 - \beta_1 x_i\bigr)^2 \\ 
\frac{n}{2\sigma^2} &= \frac{1}{2(\sigma^2)^2}\sum_{i=1}^n \bigl(y_i - \beta_0 - \beta_1 x_i\bigr)^2 \\
n &= \frac{1}{\sigma^2}\sum_{i=1}^n \bigl(y_i - \beta_0 - \beta_1 x_i\bigr)^2 \\
\end{aligned} 
$$

$$
\boxed{ \;
\sigma^2 = \frac{\sum_{i=1}^n \bigl(y_i - \beta_0 - \beta_1 x_i\bigr)^2}{n}
\;}
$$

<div style="page-break-after: always;"></div>

### Methods

Inference and result


- **Linear model fit:** 
$$
\widehat{\text{RTEN}} = -0.593 \;+\; 1.097 \cdot \text{PREP}
$$
- **Estimates:**
```
Residuals:
     Min       1Q   Median       3Q      Max 
-0.90625 -0.20008  0.06453  0.21065  0.60091 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) -0.59257    0.42265  -1.402    0.168    
X            1.09742    0.05615  19.543   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.347 on 41 degrees of freedom
Multiple R-squared:  0.9031,	Adjusted R-squared:  0.9007 
F-statistic: 381.9 on 1 and 41 DF,  p-value: < 2.2e-16
```

- **Interpretation:** A 1 unit increase in the preparedness rating of the judge increases their retention score by 1.10 on average. 

- **Inference:**

To see whether trial preparation (PREP) is a statistically significant predictor of retention ratings (RTEN), we test the hypotheses below:
\[
H_0: \beta_1 = 0 
\qquad \text{vs.} \qquad 
H_a: \beta_1 \neq 0.
\]

The linear model we fit gives the resutls below:
\[
\hat{\beta}_1 = 1.097, \quad SE(\hat{\beta}_1) = 0.056, \quad t = 19.54, \quad p < 2 \times 10^{-16}.
\]

Since the $p$-value is significantly less than 0.05, we reject $H_0$ and conclude that trial preparation is a statistically significant predictor of retention ratings at the 5\% confidence level.

A 95\% confidence interval for the slope is given by
\[
1.097 \pm 2.02 \times 0.056 = (0.985,\; 1.209),
\]
so, for a one-unit increase in trial preparation rating, we expect that the retention rating would increase by between $0.99$ and $1.21$ points.