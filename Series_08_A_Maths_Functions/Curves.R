X <- seq(0, 1, by=0.050)
f <- function(x) (x^2 - 2*x^3 + x^4 )*30
plot(X, f(X), type='l',col="purple",lwd=4,ylab="pdf",font.lab=2,font.axis=2)
abline(h=0)
abline(v=0)
abline(v=0.5,lty=2,col="red",lwd=1.5)
