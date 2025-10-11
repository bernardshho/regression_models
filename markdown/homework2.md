## Homework 2.

### Theory question

##### Question 1. Derive the normal equations and the $\hat{\beta}$ from the multivariate version of the multiple regression likelihood



$$
\frac{\partial \ell(\beta, \sigma^2)}{\partial \beta} = \frac{\partial}{\partial \beta} \left[ -\frac{n}{2} \log(2\pi\sigma^2) - \frac{1}{2\sigma^2}(Y - X\beta)'(Y - X\beta) \right]
$$

Since \(-\frac{n}{2} \log(2\pi\sigma^2)\) is constant with respect to \(\beta\):

\[
\frac{\partial \ell}{\partial \beta} = 0 - \frac{1}{2\sigma^2} \frac{\partial}{\partial \beta} \left[ (Y - X\beta)'(Y - X\beta) \right]
\]

Let \(Q = (Y - X\beta)'(Y - X\beta) = Y'Y - 2\beta'X'Y + \beta'X'X\beta\). Then:

\[
\frac{\partial Q}{\partial \beta} = -2X'Y + 2X'X\beta
\]


Set the derivative to zero:

\[
\frac{1}{\sigma^2} (2X'Y - 2X'X\beta) = 0
\]
\[
X'X\beta = X'Y
\]
\[
\hat{\beta}_{MLE} = (X'X)^{-1}X'Y
\]

<div style="page-break-after: always;"></div>


##### Question 2. Demonstrate that $\hat{\beta}$ is an unbiased estimator of $\beta$

$$
\begin{aligned}
Y &= X\beta + \epsilon \\
\hat{\beta} &= (X'X)^{-1}X'Y \\
\hat{\beta} &= (X'X)^{-1}X'(X\beta + \epsilon) \\
\hat{\beta} &= (X'X)^{-1}X'(X\beta) + (X'X)^{-1}X'(\epsilon) \\
\hat{\beta} &= (X'X)^{-1}(X'X)\beta + (X'X)^{-1}X'(\epsilon) \\
\hat{\beta} &= \beta + (X'X)^{-1}X'(\epsilon) \\
\operatorname{E}(X) &= \beta + \operatorname{E}((X'X)^{-1}X'(\epsilon)) \\ 
\operatorname{E}(X) &= \beta + (X'X)^{-1}X'\operatorname{E}(\epsilon) \\ 
\operatorname{E}(\epsilon) &= 0 \qquad \qquad \text{\footnotesize (by assumption)} \\
\end{aligned} 
$$

\[
\boxed{\operatorname{E}(X) = \beta}
\]



##### Question 3. Demonstrate that $\hat{\beta}$ follows a multivariate normal distribution



$$
\begin{aligned} 
\text{Cov}(\hat{\beta}) &= \text{Cov}((X'X)^{-1}X'\varepsilon) \\ 
&= (X'X)^{-1}X' \cdot \text{Cov}(\varepsilon) \cdot [(X'X)^{-1}X']'\\
&= (X'X)^{-1}X' \cdot (\sigma^2 I_n) \cdot X(X'X)^{-1}\\
&= (\sigma^2 I_n) (X'X)^{-1}X'X(X'X)^{-1} \\
&= (\sigma^2 I_n) (X'X)^{-1} 
\end{aligned} 
$$
\[
\boxed{\text{Cov}(\hat{\beta}) = (\sigma^2 I_n) (X'X)^{-1}} \\
\]



\[
\operatorname{E}(X) = \beta \quad \quad \text{Cov}(\hat{\beta}) = (\sigma^2 I_n) (X'X)^{-1}
\]


A linear transformation of a multivariate normal is also a multivariate normal, and 
\[
\hat{\beta} = A + C(\epsilon) 
\]

\[
\hat{\beta} = \beta + (X'X)^{-1}X'\epsilon
\]

Therefore 

Since $\epsilon \sim N(0, \sigma^2 I_n)$ and $\hat{\beta}$ is a linear transformation of $\epsilon$, it follows that:

\[
\hat{\beta} \sim N(\beta, \sigma^2 (X'X)^{-1})
\]
