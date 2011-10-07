# Programming

Accuracy on development data with `max_depth` $= 7$:

    bio
    Accuracy: 0.975000 (195/200)

    finance
    Accuracy: 0.833333 (25/30)

    speech
    Accuracy: 0.840000 (84/100)

    speech.mc
    Accuracy: 0.432203 (51/118)

    hard
    Accuracy: 0.530000 (53/100)

    easy
    Accuracy: 1.000000 (100/100)

    vision
    Accuracy: 1.000000 (80/80)

    nlp
    (took a very long time to complete)


# Analytical

1.  **Solutions**
    (a) Let $A$ be the event that the coin landed heads-up. The probability of
        rolling a number $n$ with one of the dice is $P(N = n) \mbox{ for } n =
        1,2,3,4,5,6$.
        $$P(N) = P(N \mid A) \cdot P(A) + P(N \mid \bar{A}) \cdot P(\bar{A})$$

        \begin{align*}
        & P(N = 1,2,3,4,5, or 6 \mid heads) = \frac{1}{6} \\
        & P(N = 1 \mid tails) = \frac{1}{2} \\
        & P(N = 2,3,4,5, or 6 \mid tails = \frac{1}{10} \\
        \end{align*}

        \begin{align*}
        & P(N = n) = P(N | heads) \cdot P(heads) + P(N | tails) \cdot P(tails) \\
        & P(N = 1) = \frac{1}{6} \cdot z + \frac{1}{2} \cdot (1 - z) = \frac{1}{2} - \frac{z}{3} \\
        & P(N = 2,3,4,5, or 6) = \frac{1}{6} \cdot z + \frac{1}{10} \cdot (1 - z) = \frac{1}{10} - \frac{2z}{15}
        \end{align*}
    (b) The expected value is:
        \begin{eqnarray*}
        E[X] &&= \frac{1 \cdot P(N = 1) + 2 \cdot P(N = 2) + 3 \cdot P(N = 3) + 4 \cdot P(N = 4) + 5 \cdot P(N = 5) + 6 \cdot P(N = 6)}
        {P(N = 1) + P(N = 2) + P(N = 3) + P(N = 4) + P(N = 5) + P(N = 6)} \\
        &&= \frac{\frac{1}{2} - \frac{z}{3} + 20 \cdot (\frac{1}{10} - \frac{2z}{15})}
        {\frac{1}{2} - \frac{z}{3} + 5 \cdot (\frac{1}{10} - \frac{2z}{15})} \\
        &&= \frac{\frac{5}{2} - 3z}{1 - \frac{2z}{3}}
        \end{eqnarray*}

2. Answers:
    (a) $P(X) = \displaystyle \sum_{i}P(X \mid C_i) \cdot P(C_i)$
    (b) We would use maximum likelihood estimation. This involves computing the derivative, setting the derivative equal to zero, and solving for the values of the parameters. This yield values of the parameters that are most likely to explain the data.
    (c) The problem with having a very small amount of data is that the resulting parameters are overfit to the data. If $N=4$, the rest of the possible outcomes cannot be predicted.
    (d) Another option is Bayesian optimization. This takes prior knowledge into account. The parameters are based on a prior assumption of what they should be. The values of the parameters are updated based on new data.

3. Solution:

4. Proofs:
    (a) Proof of $H(X,Y) = H(X) + H(Y |X)$
        \begin{eqnarray*}
        H(Y \mid X) + H(X) &&= \sum_{x} p(x) \sum_{y} p(y \mid x) \log \frac{1}{p(y \mid x)} \\
        &&= \sum_{x} \sum_{y} p(x) p(y,x) \log \frac{p(x)}{p(y,x)} - \sum_{i}p(x_i)\log p(x_i) \\
        &&= \sum_{x} \sum_{y} p(y,x) \left( \log p(x) - \log p(y,x) \right)  - \sum_{i}p(x_i)\log p(x_i) \\
        &&= - \sum_{x} \sum_{y} p(y,x) \log p(y,x) + \sum_{x} \sum_{y} p(y,x) \log p(x) - \sum_{i}p(x_i)\log p(x_i) \\
        &&= H(X,Y) + 0
        \end{eqnarray*}

    (b) Proof of $H(X \mid Y) \leq H(X)$
        \begin{eqnarray*}
        H(X,Y) - H(Y \mid X) = H(X) \\
        H(X \mid Y) \geq 0 \\
        \end{eqnarray*}

5. *Solution*
    (a) Many non-convex problems do not have closed-form solutions, and it can
        be very hard to find a solution that is the global optimum. Often
        techniques for solving using approximations are computationally
        tractable.  Often they make randomized, non-deterministic heuristic
        decisions that are meant to lead them to a solution that is closer to
        the global optimum and prevents them from getting stuck in a local
        optimum.
    (b) These techniques may fail to find the optimal solution for a variety of
        reasons. *Approximate and solve* may make a random guess to make a
        ballpark approximation or greedy choices which may lead to an optimum
        far off from the correct solution. the *solve and approximate* might
        involve a non-deterministic random-restart if the algorithm decide to
        try for a better solution than the current one it has found, and end up
        with a worse solution.

6. ~50 hours


<!--
vim: filetype=markdown
        \mbox{(since it is the product of (probabilities} \geq 0 ) \mbox{and the log of a positive number} \qeq 1 \\
-->
