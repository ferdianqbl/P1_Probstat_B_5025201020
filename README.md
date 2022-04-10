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

Berdasarkan hasil dari Poin A dan B, didapatkan hasil yang mirip dan tidak jauh berbeda, yaitu sekitar 0,

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