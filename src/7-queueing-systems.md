# Chapter 7 -- Queuing Systems

## Parameters of a queuing system

* $\lambda_A =$ arrival rate, i.e. the expected arrivals per 1 unit of time.
* $\lambda_S =$ service rate, the average number of jobs processed by a continuously working server during one unit of time.
* $\mu_A = 1 / \lambda_A$ mean interarrival time
* $\mu_S = 1 / \lambda_S$ mean service time
* $r = \lambda_A / \lambda_S = \mu_S / \mu_A =$ utilization, or arrival-to-service ratio

## Random values of a queuing system

* $X_s(t) =$ number of jobs receiving service at time $t$
* $X_w(t) =$ number of jobs waiting in a queue at time $t$
* $X(t) = X_s(t) + X_w(t) =$ the total number of jobs in the system at time $t$
* $S_k =$ service time of the $k$-th job
* $W_k =$ waiting time of the $k$-th job
* $R_k = S_k + W_k =$ response time, the total time a job spends in the system from its arrival until the departure
