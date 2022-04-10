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


