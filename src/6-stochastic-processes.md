# Chapter 6 -- Stochastic processes

## Binomial counting process

* $\lambda = \frac{p}{\Delta}$
* $n = \frac{t}{\Delta}$
* $X(n) = \text{Binomial}(n, p) = np$
* $Y = \text{Geometric}(p) = \frac{1}{p}$
* $T = Y\Delta$
* $\textbf{E}(T) = \textbf{E}(Y)\Delta = \frac{\Delta}{p} = \frac{1}{\lambda}$
* $Var(T) = Var(Y)\Delta^2 = (1 - p)(\frac{\Delta}{p})^2 = \frac{1 - p}{\lambda^2}$

## Poisson process

* $\textbf{E}X(t) = \lambda t$
* $X(t) = \text{Poisson}(\lambda t)$
* $T = \text{Exponential}(\lambda)$
* $T_k = \text{Gamma}(k, \lambda)$
* $\textbf{P}\{T_k \leq t\} = \textbf{P}\{X(t) \geq k\}$
* $\textbf{P}\{T_k > t\} = \textbf{P}\{X(t) < k\}$

