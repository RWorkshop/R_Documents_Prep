Resampling is a way to reuse data to generate new, hypothetical samples (called resamples) that are representative of an underlying population. It's used when:

    You don't know the underlying distribution for the population,
    Traditional formulas are difficult or impossible to apply,
    As a substitute for traditional methods.

Two popular tools are the bootstrap and jackknife. Although they have many similarities (e.g. they both can estimate precision for an estimator θ), they do have a few notable differences.
What is a Bootstrap?

Bootstrapping is the most popular resampling method today. It uses sampling with replacement to estimate the sampling distribution for a desired estimator. The main purpose for this particular method is to evaluate the variance of an estimator. It does have many other applications, including:

    Estimating confidence intervals and standard errors for the estimator (e.g. the standard error for the mean),
    Estimating precision for an estimator θ,
    Dealing with non-normally distributed data,
    Calculating sample sizes for experiments.

Bootstrapping has been shown to be an excellent method to estimate many distributions for statistics, sometimes giving better results than traditional normal approximation. It also works well with small samples. It doesn't perform very well when the model isn't smooth, is not a good choice for dependent data, missing data, censoring, or data with outliers.
Jackknife

The Jackknife works by sequentially deleting one observation in the data set, then recomputing the desired statistic. It is computationally simpler than bootstrapping, and more orderly (i.e. the procedural steps are the same over and over again). This means that, unlike bootstrapping, it can theoretically be performed by hand. However, it's still fairly computationally intensive so although in the past it was common to use by-hand calculations, computers are normally used today. One area where it doesn't perform well for non-smooth statistics (like the median) and nonlinear (e.g. the correlation coefficient).

The main application for the Jackknife is to reduce bias and evaluate variance for an estimator. It can also be used to:

    Find the standard error of a statistic,
    Estimate precision for an estimator θ.

Main Differences Between Jackknife and Bootstrap

To sum up the differences, Brian Caffo offers this great analogy: "As its name suggests, the jackknife is a small, handy tool; in contrast to the bootstrap, which is then the moral equivalent of a giant workshop full of tools."

Some specific differences:

    The bootstrap requires a computer and is about ten times more computationally intensive. The Jackknife can (at least, theoretically) be performed by hand.
    The bootstrap is conceptually simpler than the Jackknife. The Jackknife requires n repetitions for a sample of n (for example, if you have 10,000 items then you'll have 10,000 repetitions), while the bootstrap requires "B" repetitions. This leads to a choice of B, which isn't always an easy task. A general rule of thumb is that B = 1,000 unless you have access to a large amount of computing power.
    In most cases (see Efron, 1982), the Jackknife doesn't perform as well the Bootstrap.
    Bootstrapping introduces a "cushion error", an extra variation source, due to the finite resampling of size B. Note that the cushion error is reduced for large B sizes or where only biased sets of bootstrap samples are used (called b-bootstrap).
    The Jackknife is more conservative than bootstrapping, producing slightly larger estimated standard errors.
    The Jackknife gives the same results every time, because of the small differences between replications. The bootstrap gives different results each time that it's run.
    The Jackknife tends to perform better for confidence interval estimation for pairwise agreement measures.
    Bootstrapping performs better for skewed distributions.
    The Jackknife is more suitable for small original data samples.

References

Efron, B. (1982), "The Jackknife, the Bootstrap, and Other Resampling Plans," SIAM, monograph #38, CBMS-NSF.
