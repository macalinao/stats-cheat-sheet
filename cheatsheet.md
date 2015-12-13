%CS 3341 -- Probability and Statistics
%Cheat Sheet
%Ian Macalinao
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

# Chapter 7 -- Queuing Systems

## Parameters of a queuing system

* $\lambda_A =$ arrival rate, i.e. the expected arrivals per 1 unit of time.
* $\lambda_S =$ service rate, the average number of jobs processed by a continuously working server during one unit of time.
* $\mu_A = 1 / \lambda_A$ mean interarrival time
* $\mu_S = 1 / \lambda_S$ mean service time
* $r = \lambda_A / \lambda_S = \mu_S / \mu_A =$ utilization, or arrival-to-service ratio, or the expected number of jobs receiving service at any given time

## Random values of a queuing system

* $X_s(t) =$ number of jobs receiving service at time $t$
* $X_w(t) =$ number of jobs waiting in a queue at time $t$
* $X(t) = X_s(t) + X_w(t) =$ the total number of jobs in the system at time $t$. This is a **queueing process** because it may increase or decrease, whereas a **counting process** may only increase.
* $S_k =$ service time of the $k$-th job
* $W_k =$ waiting time of the $k$-th job
* $R_k = S_k + W_k =$ response time, the total time a job spends in the system from its arrival until the departure
* $\lambda_A \textbf{E}(R) = \textbf{E}(X)$ -- The Little's Law (stationary queuing systems only)

### Notes

* A queuing system is *stationary* if the distributions of $S_k$, $W_k$, and $R_k$ are independent of $k$.

## Bernoulli single-server queuing process

* $\Delta$ -- frame size
* $p_A = \lambda_A \Delta$ -- probability of arrival during a frame
* $p_S = \lambda_S \Delta$ -- probability of service during a frame

### Markov property

* $p_{00} = \textbf{P} \{ \text{no arrivals} \} = 1 - p_A$
* $p_{01} = \textbf{P} \{ \text{new arrival} \} = p_A$

For all $i \geq 1$,

* $p_{i,i-1} = \textbf{P} \{ \text{no arrivals} \cap \text{one departure} \} = (1 - p_A)p_S$
* $p_{i,i} = \textbf{P} \{ \text{no arrivals} \cap \text{no departures} \} + \textbf{P} \{ \text{one arrival} \cap \text{one departure} \} = (1 - p_A)(1 - p_S) + p_A p_S$
* $p_{i,i+1} = \textbf{P} \{ \text{one arrival} \cap \text{no departures} \} = p_A(1 - p_S)$

Steady state distribution can be computed if $\lambda_S > \lambda_A$.

## M/M/1 system

A/S/n/C

* A -- distribution of interarrival times
* S -- distribution of service times
* n -- number of servers
* C -- capacity

* $\pi_x = \textbf{P} \{ X = x \} = r^x(1 - r)$ for $x = 0, 1, 2, \ldots$
* $\textbf{E}\{X\} = \frac{r}{1 - r}$
* $Var(x) = \frac{r}{(1 - r)^2}$
* $r = \lambda_A / \lambda_S = \mu_S / \mu_A = 1 - \pi_0 = P(busy) = 1 - P(idle)$

The system is functional if $r < 1$. IF $r \geq 1$ the system will be overloaded.

* $W = S_1 + S_2 + S_3 + \ldots + S_X$ -- waiting time
* $\textbf{E}(W) = \textbf{E}(S_1 + \ldots + S_X) = \textbf{E}(S) \textbf{E}(X) = \frac{\mu_S r}{1 - r} = \frac{r}{\lambda_S(1 - r)}$ -- Expected waiting time
* $\textbf{E}(R) = \textbf{E}(W) + \textbf{E}(S) = \frac{\mu_S r}{1 - r} + \mu_S = \frac{\mu_S}{1 - r} = \frac{1}{\lambda_S(1 - r)}$ -- Expected response time

Queue length (number of waiting jobs)

* $X_w = X - X_s$ where $X_s$ is number of jobs getting service at any time (0 or 1).
* $\textbf{E}(X_w) = \textbf{E}(X) - \textbf{E}(X_s) = \frac{r}{1 - r} - r = \frac{r^2}{1 - r}$
# Chapter 8 -- Introduction to Statistics

* $\sigma(\hat \theta)$ -- standard error of estimator $\hat theta$ of parameter $\theta$
* $s(\hat \theta)$ -- estimated standard error -- standard deviation of the estimator

# Chapter 9 -- Statistical Inference I

## Method of moments
* $\mu_k = \textbf{E}(X^k)$ -- k-th population moment
* $m_k = \frac{1}{n} \Sigma_{i=1}^{n} X_i^k$ -- k-th sample moment

## Method of maximum likelihood
* $\textbf{P}\{\textbf{X} = (X_1, \ldots, X_n)\} = P(\textbf{X}) = P(X_1, \ldots, X_n) = \Pi_{i = 1}^{n} P(X_i)$ -- discrete case, where $P(X)$ is the pmf of the distribution
* $\textbf{P}\{x - h < X < x + h\} = \int_{x - h}^{x + h} f(y)dy \approx (2h)f(x)$ -- continuous case, where f(y) is the density function

