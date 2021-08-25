gam = seq(-2,1,by=1/10)

y = (.75+.75*rnorm(length(gam))/10)/(1-gam)

plot(y,gam,type='l')

