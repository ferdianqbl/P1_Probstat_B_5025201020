# P1_Probstat_B_5025201020
## Laporan Praktikum Modul 1 Probabilitas dan Statistik 2022

**Nama  : Muhammad Ferdian Iqbal**

**NRP   : 5025201020**

**Kelas : B**

***

## **Soal 1**
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya

### A.
> Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik).

``` R
# A
x = 3
p_success = 0.2
geom = function(x, p_success){
  return (p_success * ((1-p_success)^(x)))
}

print(paste("Peluang = ", geom(x, p_success)), quote=FALSE)

## HASIL = 0.1024
```
![1.a](screenshots/1A.jpg)

Peluang dapat dicari dengan mengalikan besar peluang berhasil dengan hasil dari besar peluang gagal pangkat x.

### B.
> mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ).

``` R
# B
n = 10000
distGEO = rgeom(n, p_success)
print(paste("Mean = ", mean(distGEO == 3)), quote=FALSE)
```
![1.a](screenshots/1B.jpg)

Mean dapat dicari dengan mencari distribusi geometrik untuk n data kemudian dicari meannya untuk x = 3


### C.
> Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

Berdasarkan hasil peluang pada poin A, yaitu 0.1024 dan hasil Mean pada poin B, yaitu 0.1008, dapat disimpulkan bahwa peluang distribusi geometrik memiliki nilai yang hampir sama atau mirip dengan nilai Meannya.

### D.
> Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

``` R
# D
hist(distGEO, main = "1D")
```

![1.a](screenshots/1D.jpg)

### E.
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

``` R
# E
Rataan = 1/p_success
Varian = (1-p_success)/(p_success^2)
print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)
```

![1.a](screenshots/1E.jpg)

Rataan dapat diperoleh dari hasil 1 / besar peluang sukses. Sedangkan, Varian dapat dicari dari besar peluang gagal dibagi peluang sukses pangkat 2

***

## **Soal 2**
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

``` R
# MAIN FUNCTION
comb = function(n, x) {
  factorial(n) / factorial(n-x) / factorial(x)
}

formula = function(n, n_success, n_fail, p_success, p_fail){
  return (comb(n, n_success)*(p_success^n_success)*(p_fail^(n-n_success)))
}
```
### A.
> Peluang terdapat 4 pasien yang sembuh

``` R
# A
n = 20
n_success = 4
n_fail = n - n_success
p_success = 0.2
p_fail = 1 - p_success

print(paste("Peluang = ", formula(n, n_success, n_fail, p_success, p_fail)), quote=FALSE)
```

![2A](screenshots/2A.jpg)

Peluang dapat dicari dengan mengetahui hasil dari kombinasi antara n dan n_success dikali dengan peluang sukses pangkat jumlah pasien sembuh dikali dengan peluang gagal pangkat jumlah pasien yang tidak sembuh

### B.
> Gambarkan grafik histogram berdasarkan kasus tersebut

``` R 
# B
n_of_success <- append(rep(c(1), n_success), rep(c(0), n_fail))
hist(n_of_success, breaks = 2, xaxp = c(0,1,1), ylim = c(0,n), yaxp = c(0, n, n), main = "2B", xlab = "succeed")
```
![2B](screenshots/2B.jpg)

### C.
> Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial

``` R
# C
Rataan = n * p_success
Varian = n * p_success * p_fail

print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)
```

![2C](screenshots/2C.jpg)

Rataan diperoleh dari perkalian banyaknya pasien dengan peluang sembuh. Sedangkan, varian diperoleh dari perkalian Rataan dengan peluang gagal

***

## **Soal 3**
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### A.
> Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

``` R
# A
ratHis = 4.5
n = 6
pois = function(ratHis, n){
  return ((exp(-ratHis)* ratHis^n)/factorial(n))
}

print(paste("Peluang = ", pois(ratHis, n)), quote=FALSE)
```

![3A](screenshots/3A.jpg)

Peluang dapat dicari dengan mencari exponensial dari (- rata - rata Historis). Lalu, dikalikan dengan rata-rata historis pangkat n (jumlah bayi lahir). Kemudian, dibagi dengan hasil faktorial n

### B.
> simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)

``` R
# B
n = 6
data = rpois(356, ratHis)
text = "Histogram 3B"
hist(data, main = text)
```

![3B](screenshots/3B.jpg)

### C.
> dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

Berdasarkan poin A, peluang eksponensial dari 6 bayi lahir adalah 0.128 pada setiap harinya. Sedangkan dari peluang tersebut, diperoleh banyaknya bayi lahir 6 orang per harinya selama setahun adalah antara 20 - 50 kali

### D.
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson

``` R
# D
Rataan = ratHis
Varian = ratHis
print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)
```
![3D](screenshots/3D.jpg)

Rataan dan Varian untuk Distribusi Poisson adalah rata - rata historis.
***

## **Soal 4**
Diketahui nilai x = 2 dan v = 10. Tentukan:

### A.
> Fungsi Probabilitas dari Distribusi Chi-Square.

``` R
# A
x = 2
v = 10
print(paste("Probabilitas = ", dchisq(x, v)), quote=FALSE)
```

![4A](screenshots/4A.jpg)

Probabilitas distribusi Chi_Square dapat dicari dengan menggunakan fungsi dchishq dengan argumen x = 2 dan v = 10

### B.
> Histogram dari Distribusi Chi-Square dengan 100 data random

``` R
# B
n = 100
data = rchisq(n, v)
hist(data, xlab = "Sumbu x", ylab = "Sumbu y", main = "4B")
```
![4B](screenshots/4B.jpg)

### C.
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square

``` R
# C
Rataan = v
Varian = 2 * v
print(paste("Rataan = ", Rataan), quote=FALSE)
print(paste("Varian = ", Varian), quote=FALSE)
```

![4C](screenshots/4C.jpg)

Nilai dari Rataan adalah v. Sedangkan varian adalah Rataan dikali 2.

***

## **Soal 5**
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### A.
> Fungsi Probabilitas dari Distribusi Exponensial

``` R
# A
lambda = 3
# fungsi umum
distExp = function(lambda, target){
  return(lambda * exp(-1 * lambda * target))
}

print(paste("Distribusi Eksponensial = ", dexp(lambda)), quote = FALSE) # jika menggunakan fungsi built in
```

![5A](screenshots/5A.jpg)

Fungsi umum dari distribusi ini adlaah lambda dikali eksponensial dari -lambda * target. Namun, apabila menggunakan fungsi built in diperoleh hasil 0.0498

### B.
> Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

``` R
# B
set.seed(1)
hist(rexp(10, rate = lambda), xaxp = c(0,5,10), main = "10 Data Random")
hist(rexp(100, rate = lambda), xaxp = c(0,5,10), main = "100 Data Random")
hist(rexp(1000, rate = lambda), xaxp = c(0,5,10), main = "1000 Data Random")
hist(rexp(10000, rate = lambda), xaxp = c(0,5,10), main = "10000 Data Random")
```
![5A](screenshots/5B1.jpg)
![5A](screenshots/5B2.jpg)
![5A](screenshots/5B3.jpg)
![5A](screenshots/5B4.jpg)

### C.
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
  > - Gunakan set.seed(1)
  > - Gunakan fungsi bawaan R

``` R
# C
n = 100
data = rexp(n, lambda)

print(paste("Rataan = ", mean(data)), quote=FALSE)
print(paste("Varian = ", var(data)), quote=FALSE)
```
![5C](screenshots/5C.jpg)

Rataan dan varian dapat diperoleh dengan fungsi mean dan var dari hasil rexp(n, lambda)

***

## **Soal 6**
 Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

``` R
n = 100
mean = 50
sd = 8

```
### A.
> Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).

``` R
# A
data = rnorm(n, mean, sd)
zscore = (data - mean)/sd
plot(data)

print(paste("ZScore = ", zscore), quote=FALSE)
```
![6A](screenshots/6A.jpg)

ZScore dapat dicari dengan rumus banyaknya data - nilai meannya. Kemudian, dibagi dengan standar deviasinya.

### B.
> Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

``` R
# B
hist(data, main = "5025201020_Muhammad Ferdian Iqbal_Probstat_B_DNhistogram")
```
![6B](screenshots/6B.jpg)

### C.
> Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

``` R
# C
print(paste("Varian = ", var(data)), quote = FALSE)
```
![6C](screenshots/6C.jpg)

Nilai varian dapat diperoleh menggunakan fungsi var dengan argumen hasil dari rnorm(100, 50, 8)