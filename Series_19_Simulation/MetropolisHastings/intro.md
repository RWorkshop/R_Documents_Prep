Introduction

The Metropolis Hastings algorithm is a beautifully simple algorithm for producing samples from distributions that may otherwise be difficult to sample from.

Suppose we want to sample from a distribution π
, which we will call the “target” distribution. For simplicity we assume that π

is a one-dimensional distribution on the real line, although it is easy to extend to more than one dimension (see below).

The MH algorithm works by simulating a Markov Chain, whose stationary distribution is π
. This means that, in the long run, the samples from the Markov chain look like the samples from π

. As we will see, the algorithm is incredibly simple and flexible. Its main limitation is that, for difficult problems, “in the long run” may mean after a very long time. However, for simple problems the algorithm can work well.


https://stephens999.github.io/fiveMinuteStats/MH_intro.html
