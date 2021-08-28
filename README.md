# CRAA Utility

Utility function -- Ce petit exemple pour simuler le cas d'une fonction d'utilit� CRRA : $U(x) = \frac{x^{\gamma}}{\gamma}$

avec $\gamma \in [ -2 ; 1[$ et $x^* = 75\%$.

Les dynamiques des actifs du portefeuille sont donn�es par :

$$
dS_t = 0.06S_t \quad dt + 02 St \quad dW_t\\
dB_t = 0.03B_t \quad dt
$$


```{r message=TRUE, warning=FALSE, paged.print=TRUE}
gam = seq(-2,1,by=1/10)

y = (.75+.75*rnorm(length(gam))/10)/(1-gam)

plot(y,gam,type='l')

```


