# CRAA Utility

```{r message=TRUE, warning=FALSE, paged.print=FALSE}
require('mathjax').init({
  loader: {load: ['input/tex', 'output/svg']}
}).then((MathJax) => {
  const svg = MathJax.tex2svg('\\frac{1}{x^2-1}', {display: true});
  console.log(MathJax.startup.adaptor.outerHTML(svg));
}).catch((err) => console.log(err.message));
```



Utility function -- Ce petit exemple pour simuler le cas d'une fonction d'utilité CRRA : \[U(x) = \frac{x^{\gamma}}{\gamma}\]

avec $\gamma \in [ -2 ; 1[$ et $x^* = 75\%$.

Les dynamiques des actifs du portefeuille sont donnéees par :

\\[
    dS_t = 0.06S_t \quad dt + 02 St \quad dW_t\\
    dB_t = 0.03B_t \quad dt
\\]


```{r message=TRUE, warning=FALSE, paged.print=TRUE}
gam = seq(-2,1,by=1/10)

y = (.75+.75*rnorm(length(gam))/10)/(1-gam)

plot(y,gam,type='l')

```


