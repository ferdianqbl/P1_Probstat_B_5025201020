# A
x = 3
p_success = 0.2
geom = function(x, p_success){
  return (p_success * ((1-p_success)^(x)))
}

print(paste("Peluang = ", geom(x, p_success)), quote=FALSE)

# B
n = 10000
distGEO = rgeom(n, p_success)
print(paste("Mean = ", mean(distGEO == 3)), quote=FALSE)

# C
# D
hist(distGEO, main = "1D")

# E
Rataan = 1/p_success
Varian = (1-p_success)/(p_success^2)
print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)