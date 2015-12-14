# Chapter 9 -- Statistical Inference I

## Method of moments
* $\mu_k = \textbf{E}(X^k)$ -- k-th population moment
* $m_k = \frac{1}{n} \Sigma_{i=1}^{n} X_i^k$ -- k-th sample moment

## Method of maximum likelihood
* $\textbf{P}\{\textbf{X} = (X_1, \ldots, X_n)\} = P(\textbf{X}) = P(X_1, \ldots, X_n) = \Pi_{i = 1}^{n} P(X_i)$ -- discrete case, where $P(X)$ is the pmf of the distribution
* $\textbf{P}\{x - h < X < x + h\} = \int_{x - h}^{x + h} f(y)dy \approx (2h)f(x)$ -- continuous case, where f(y) is the density function

## Confidence intervals
* $\hat \theta \pm z_{\alpha / 2} * \sigma(\hat \theta)$ -- Confidence interval, Normal distribution -- $(1 - \alpha)$ 100% confidence interval for $\theta$.
* $\bar X \pm z_{\alpha / 2} \frac{\sigma}{\sqrt{n}}$ -- Confidence interval for the mean; $\sigma$ is known
* $\bar X - \bar Y \pm z_{\alpha / 2} \sqrt{\frac{\sigma_X^2}{n} + \frac{\sigma_Y^2}{m}}$ -- Confidence interval for the difference of means; known $\sigma$'s
* $n \geq (z_{\alpha / 2} \sigma / \Delta)^2$ -- sample size for significance, where $\Delta$ is margin of error

## Unknown standard deviation
* $\hat p \pm z_{\alpha / 2} \sqrt{\frac{\hat p(1 - \hat p)}{n}}$ -- Confidence interval for a population proportion
* $\hat p_1 - \hat p_2 \pm z_{\alpha / 2} \sqrt{\frac{\hat p_1(1 - \hat p_1)}{n_1} + \frac{\hat p_2(1 - \hat p_2)}{n_2}}$ -- Confidence interval for the difference of proportions
* $\bar X \pm t_{\alpha/2} \frac{s}{\sqrt{n}}$ -- Confidence interval for the mean; $\sigma$ is unknown where $t_{\alpha / 2}$ is a critical value from T-distribution

