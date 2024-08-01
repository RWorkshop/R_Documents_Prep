

```R
\section{Test for Equality of Variance and Means}

<ul>
<li> Test for Equality of Test (\<b><tt>var.test()</tt></b>)
<li> Welch Two Sample \emph{t-}test (\<b><tt>t.test()</tt></b>)
<li> Independent Two Sample \emph{t-}test (<b><tt>t.test(var.equal=TRUE)})

 

\section{}

In \texttt{R} the function \texttt{var.test} allows for the comparison of two variances using an F-test. 

```


```R
\subsection{syntax}
The syntax for the testing variances is \\
\texttt{var.test(X, Y, ratio = 1, alternative = “two.sided”, conf.level = 0.95)}\\
where X and Y are vectors containing the two samples. 

\begin{itemize} 
\item The optional command \texttt{ratio} is the null hypothesis; the default value is 1 if not specified. 
\item The command \texttt{alternative} gives the alternative hypothesis should the experimental F-ratio is found to be significantly 
different than that specified by ratio. 
\item The default for alternative is “two-sided” with the 
other possible choices being “less” or “greater.” 
\item The command \texttt{conf.level;} gives the confidence level to be used in the test; the default value of 0.95 is equivalent to α = 0.05. 
\end{itemize}
Here is a typical result using the objects std.method and new.method. 
```


```R
#### Interpreting the output
There are two ways to interpret the results provided by \texttt{R}. 


First, the p-value provides the 
smallest value of α for which the F-ratio is significantly different from the hypothesized 
value. If this value is larger than the desired $\alpha$, then there is insufficient evidence to 
reject the null hypothesis; otherwise, the null hypothesis is rejected. 

Second, \texttt{R} provides 
the desired confidence interval for the F-ratio; if the calculated value falls within the 
confidence interval, then the null hypothesis is retained. 


For this example, the null 
hypothesis is retained and we find no evidence for a difference in the variances for the 
objects std.method and new.method. 
%Note that R does not restrict the F-ratio to values 
greater than 1. 

```


```R






 
</ul>

<h3>Bartlett's test for Homogeneity of Variances</h3>
 

Equal variances across samples is called homogeneity of variances. Bartlett's test is used to test if multiple samples have equal variances. 
<p>
Some statistical tests, such as the analysis of variance, assume that variances are equal across groups or samples.  The Bartlett test can be used to verify that assumption.
<p>
<ul>
<li> The null hypothesis is that each of the samples have equal variance.
<li> The alternative hypothesis states that at least one sample has a significantly different variance.
</ul>
```


```R
<h2>var.test(X,Y)</2>

Two values are equal - then the ratio should be 1 

Remark that p-value and confidence interval approach would yield different conclusions
using very strict following of decision rules. 0.025 is an arbitrary threshold.
(Test is actually a one-tailed test)

```


```R

#### Using p-value
P-value less than 0.025?  - reject null
otherwise fail to reject null

Here p-value is 0.02725  fail to reject.


```


```R

#### Using Confidence Intervals
null hypothesis : variance ratio is expected to be 1.

This value is not in range. Reject Null hypothesis


```


```R

#### Using p-value
P-value less than 0.025?  - reject null
otherwise fail to reject null

Here p-value is 0.02725  fail to reject.

```


```R

#### Using Confidence Intervals
null hypothesis : variance ratio is expected to be 1.

This value is not in range. Reject Null hypothesis      
```
