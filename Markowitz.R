##Markowitz

mu =  c(8/100,12/100)
vol = c(15/100,25/100)
rho = -9/100

sig = matrix(NaN,2,2)
{
  diag(sig) = vol^2
  sig[1,2]=sig[2,1]=prod(vol)*rho
  sig = solve(sig)
}

a = sum(sig)

vol.m = (1/a)^.5
x = 1/a* sig %*% matrix(c(1,1),2,1)

b = matrix(mu,1,2)%*%sig%*%matrix(mu,2,1)

e.m = b/a 

rep = as.list(c(a, b, x, e.m, vol.m,sig),all.names=T)
names(rep)<-c("a", "b", "x", "return","Volatilité du Pf", "sigma^-1")

print(rep)
