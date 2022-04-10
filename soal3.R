# A
ratHis = 4.5
n = 6
pois = function(ratHis, n){
  return ((exp(-ratHis)* ratHis^n)/factorial(n))
}

print(paste("Peluang = ", pois(ratHis, n)), quote=FALSE)

# B
n = 6
data = rpois(356, ratHis)
text = "Histogram 3B"
hist(data, main = text)

# C
# D
Rataan = ratHis
Varian = ratHis
print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)