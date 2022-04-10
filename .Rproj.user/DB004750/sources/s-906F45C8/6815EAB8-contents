# A
lambda = 3
# fungsi umum
distExp = function(lambda, target){
  return(lambda * exp(-1 * lambda * target))
}

print(paste("Distribusi Eksponensial = ", dexp(lambda)), quote = FALSE) # jika menggunakan fungsi built in

# B
set.seed(1)
hist(rexp(10, rate = lambda), xaxp = c(0,5,10), main = "10 Data Random")
hist(rexp(100, rate = lambda), xaxp = c(0,5,10), main = "100 Data Random")
hist(rexp(1000, rate = lambda), xaxp = c(0,5,10), main = "1000 Data Random")
hist(rexp(10000, rate = lambda), xaxp = c(0,5,10), main = "10000 Data Random")

# C
n = 100
data = rexp(n, lambda)

print(paste("Rataan = ", mean(data)), quote=FALSE)
print(paste("Varian = ", var(data)), quote=FALSE)