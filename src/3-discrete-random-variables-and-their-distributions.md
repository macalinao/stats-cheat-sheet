# Chapter 3 -- Discrete Random Variables And Their Distributions

## Bernoulli distribution
* $p$ -- probability of success
* $\textbf{E}(X) = p$
* $\text{Var}(X) = pq$

## Binomial distribution
* $n$ -- number of trials
* $p$ -- probability of success
* $q$ -- probability of failure
* $P(x) = {p \choose x} p^x q^{n - x}$
* $\textbf{E}(X) = np$
* $\text{Var}(X) = npq$

## Geometric distribution
* $p$ -- probability of success
* $P(x) = (1 - p)^{x - 1}p, x = 1, 2, \ldots$
* $\textbf{E}(X) = \frac{1}{p}$
* $\text{Var}(X) = \frac{1 - p}{p^2}$

## Negative Binomial distribution
* $k$ -- number of successes
* $p$ -- probability of success
* $P(x) = {{x - 1} \choose {k - 1}} (1 - p)^{x - k} p^k, x = k, k + 1, \ldots$
* $\textbf{E}(X) = \frac{k}{p}$
* $\text{Var}(X) = \frac{k(1 - p)}{p^2}$

## Poisson distribution
* $\lambda$ -- frequency, average number of events
* $P(x) = e^{-\lambda} \frac{\lambda^x}{x!}, x = 0, 1, 2, \ldots$
* $\textbf{E}(X) = \lambda$
* $\text{Var}(X) = \lambda$

