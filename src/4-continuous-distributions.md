# Chapter 4 -- Continuous Distributions

## Uniform distribution
* $f(x) = \frac{1}{b}$ for $0 \leq x \leq b$.
* $\textbf{E}(X) = \frac{a + b}{2}$
* $\text{Var}(X) = \frac{(b - a)^2}{12}$

## Exponential distribution
* $\lambda$ -- frequency parameter, the number of events per time unit
* $\textbf{E}(x) = \frac{1}{\lambda}$
* $\text{Var}(X) = \frac{1}{\lambda^2}$

## Gamma distribution
* $\alpha$ -- shape parameter
* $\lambda$ -- frequency parameter
* $\textbf{E}(X) = \frac{\alpha}{\lambda}$
* $\text{Var}(X) = \frac{\alpha}{\lambda^2}$

### Gamma-Poisson formula
* $\textbf{P}\{T > t\} = \textbf{P}\{ X < \alpha \}$
* $\textbf{P}\{T \leq t\} = \textbf{P}\{ X \geq \alpha \}$

## Normal distribution
* $\mu$ -- expectation, location parameter
* $\sigma$ -- standard deviation, scale parameter
* $\textbf{E}(X) = \mu$
* $\text{Var}(X) = \sigma^2$
* $Z = \frac{x - \mu}{\sigma}$
* $Z_n = \frac{S_n - n\mu}{\sigma \sqrt{n}}$ -- Central limit theorem

Normal can be approximated to Binomial with $\text{Binomal}(n, p) \approx \text{Normal}(\mu = np, \sigma = \sqrt{np(1 - p)}$

