comb = function(n, x) {
  factorial(n) / factorial(n-x) / factorial(x)
}

formula = function(n, n_success, n_fail, p_success, p_fail){
  return (comb(n, n_success)*(p_success^n_success)*(p_fail^(n-n_success)))
}

# A
n = 20
n_success = 4
n_fail = n - n_success
p_success = 0.2
p_fail = 1 - p_success

print(paste("Peluang = ", formula(n, n_success, n_fail, p_success, p_fail)), quote=FALSE)

# B
n_of_success <- append(rep(c(1), n_success), rep(c(0), n_fail))
hist(n_of_success, breaks = 2, xaxp = c(0,1,1), ylim = c(0,n), yaxp = c(0, n, n), main = "2B", xlab = "succeed")

# C
Rataan = n * p_success
Varian = n * p_success * p_fail

print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)