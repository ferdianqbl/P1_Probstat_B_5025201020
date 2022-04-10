n = 100
mean = 50
sd = 8

# A
data = rnorm(n, mean, sd)
zscore = (data - mean)/sd
plot(data)

print(paste("ZScore = ", zscore), quote=FALSE)

# B
hist(data, main = "5025201020_Muhammad Ferdian Iqbal_Probstat_B_DNhistogram")

# C
print(paste("Varian = ", var(data)), quote = FALSE)