# A
x = 2
v = 10
print(paste("Probabilitas = ", dchisq(x, v)), quote=FALSE)

# B
n = 100
data = rchisq(n, v)
hist(data, xlab = "Sumbu x", ylab = "Sumbu y", main = "4B")

# C
Rataan = v
Varian = 2 * v
print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)