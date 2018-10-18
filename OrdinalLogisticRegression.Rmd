
What is Ordinal Regression ?
===================

Ordinal Regression ( also known as Ordinal Logistic Regression) is another extension of binomial logistics regression. Ordinal regression is used to predict the dependent variable with ‘ordered’ multiple categories and independent variables. 

In other words, it is used to facilitate the interaction of dependent variables (having multiple ordered levels) with one or more independent variables.

For example: Let us assume a survey is done. We asked a question to respondent where their answer lies between agree or disagree. The responses thus collected didn’t help us to generalize well. Later, we added levels to our responses such as Strongly Disagree, Disagree, Agree, Strongly Agree.

This helped us to observe a natural order in the categories. For our regression model to be realistic, we must appreciate this order instead of being naive to it, as in the case of MLR. Ordinal Logistic Regression addresses this fact. Ordinal means order of the categories.


```R
ologit <- read.csv("https://raw.githubusercontent.com/RWorkshop/workshopdatasets/master/ologit.csv")
```


```R
head(ologit,2)
```


<table>
<thead><tr><th>X</th><th>apply</th><th>pared</th><th>public</th><th>gpa</th></tr></thead>
<tbody>
	<tr><td>1              </td><td>very likely    </td><td>0              </td><td>0              </td><td>3.26           </td></tr>
	<tr><td>2              </td><td>somewhat likely</td><td>1              </td><td>0              </td><td>3.21           </td></tr>
</tbody>
</table>


