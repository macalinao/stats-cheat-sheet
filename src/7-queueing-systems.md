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
* $p_{i,i-1} = \textbf{P} \{ \text{no arrivals} \cap \text{one departure} \} = (1 - p_A)p_S$
* $p_{i,i} = \textbf{P} \{ \text{no arrivals} \cap \text{no departures} \} + \textbf{P} \{ \text{one arrival} \cap \text{one departure} \} = (1 - p_A)(1 - p_S) + p_A p_S$
* $p_{i,i+1} = \textbf{P} \{ \text{one arrival} \cap \text{no departures} \} = p_A(1 - p_S)$
