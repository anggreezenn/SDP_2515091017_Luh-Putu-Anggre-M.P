# Tugas Analisis Statistik: Deskriptif, Korelasi, dan Regresi

## 1. Informasi Penyusun

- **Nama:** `[LUH PUTU ANGGRE MIRAYANTI PUTRI]`
- **NIM:** `[2515091017]`
- **Program Studi:** `[SISTEM INFORMASI]`
- **Mata Kuliah:** Statistika dan Probabilitas

---

## 2. Deskripsi Proyek
Dalam proyek ini, dataset yang digunakan adalah data yang sudah di sediakan oleh dosen mata kuliah statistik
dan probabilitas yaitu Data Startup SaaS. Dataset ini  berisi data numerik yang menggambarkan banyak performa bisnis perusahaan.
Dalam projek  saya, saya  menggunakan variable pendapatan tahunan dan nilai pelanggan. Tujuan dari analisis ini adalahh untuk memahami
karakteristik data melalui statistik deskriptif,menguji asumsi normalitas, menganalisis hubungan antara variabel menggunakan uji 
korelasi, serta melihat kecenderungan pengaruh pendapatan tahunan tehadap nilai pelanggan melalui analisis regresi.


*Contoh:*
> Dataset yang digunakan adalah data `...` yang berisi informasi tentang `...`. Variabel kunci dalam dataset ini meliputi `variabel_A`, `variabel_B`, dan `variabel_C`. Tujuan dari proyek ini adalah untuk memahami karakteristik data melalui statistik deskriptif, menguji hubungan antara `variabel_A` dan `variabel_B` melalui analisis korelasi, serta memprediksi `variabel_C` menggunakan `variabel_A` sebagai prediktor melalui analisis regresi.

---

## 3. Struktur Proyek

Proyek ini diorganisir ke dalam beberapa folder:
- `/data`: Berisi dataset mentah yang digunakan untuk analisis.
- `/scripts`: Berisi semua skrip R yang digunakan dalam analisis, diurutkan berdasarkan alur kerja.
- `/results`: Berisi output dari analisis, seperti plot, gambar, atau tabel ringkasan.

---

## 4. Cara Menjalankan Analisis

Untuk mereproduksi hasil analisis ini, ikuti langkah-langkah berikut:
1. Pastikan Anda memiliki R dan RStudio terinstal.
2. Buka proyek R ini di RStudio.
3. Instal paket yang diperlukan dengan menjalankan perintah berikut di konsol R:
   ```R
   # install.packages(c("tidyverse", "corrplot", "knitr"))
   ```
4. Jalankan skrip di dalam folder `/scripts` secara berurutan, mulai dari `01_data_preparation.R` hingga `05_analisis_regresi.R`.

---

## 5. Hasil dan Interpretasi

Di bagian ini, mahasiswa diharapkan untuk menyajikan dan menginterpretasikan hasil dari setiap tahap analisis.

### 5.1. Statistik Deskriptif
- **Ukuran Pemusatan (Mean, Median, Modus):**
  - *Tabel atau ringkasan...*
  | Statistik       | Nilai Pelanggan (Juta IDR) |
| --------------- | -------------------------- |
| Mean            | 100.02                     |
| Median          | 98.705                     |
| Modus           | 10.11                      |
| Minimum         | 6.01                       |
| Maksimum        | 205.46                     |

  - *Interpretasi:* 
  1. Berdasarkan hasil analisis statistik deskriptif pada vaariabel nilai pelangan juta, diperoleh nilai mean sebesar 100,02.
  Nilai ini menunjukan bahwa secara rata- rata, nilai pelanggan dari data startup yang dianalisis berada di sekitar 100 juta IDR.
  2. Nilai median yang diperoleh adalah 98.705, yang berarti separuh dari data meiliki pelanggan di bawah angka tersebut dan
  separuh lainya berada diatasnya. selisih yang cukup relatif kecil diantara mean dan median menunjukan bahwa
  distribusi data cukup simetris dan tidak terlalu di pengaruhi olehj nilai ekstrem.
  3. Nilai modus sebesar 10.11, menunjukan nilai pelannggan yang paling sering muncul dalam data.  perbedaan antara modus 
  dengan mean dan median mengindikasikan bahwa data memiliki variasi nilai yang cukup beragam, namun nilai rata- rata tetap
  dapat digunakan sebagai representasi umum data.
- **Ukuran Sebaran (Standar Deviasi, Range, Kuar0til):**
  - *Tabel atau ringkasan...*
| Ukuran Sebaran  | Nilai  |
| --------------- | ------ |
| Standar Deviasi | 59.86  |
| Kuartil 1 (Q1)  | 53.59  |
| Kuartil 3 (Q3)  | 146.88 |
| Range           | 199.45 |
  - *Interpretasi:*  
  1. Nilai standar deviasi yang di peroleh adalah 59.86 yang menunjukan bahwa data memiliki tingkat variasi yang cukup besar 
  terhadap nilai  rata- ratanya.
  2. Nilai range menunjukan bahwa data memiliki nilai minimum sebesar 6,01 dan nilai maksimum sebesar 205.46. Rentang yang cukup
  lebar ini menandakan adanya perbedaan nilai pelanggan yang signifikan antara startup dalam data.  199.45 nilai  ini
  didapat dari Range = Nilai Maksimum − Nilai Minimum = 205.46 − 6.01 = 199.45.
  
- **Visualisasi (Histogram/Boxplot):**
  - *Sematkan gambar plot dari folder/results/boxplot_Nilai_Pelanggan_Juta_IDR.png*
  
  - *Interpretasi:* Histogram dan boxplot menunjukkan bahwa data menyebar secara relatif merata dan tidak terdapat outlier 
  ekstrem yang sangat menyimpang, sehingga data masih layak untuk dianalisis lebih lanjut.

### 5.2. Uji Normalitas
- **Hasil Uji Shapiro-Wilk:**
  - *Nilai p-value W = 0.94414, p-value = 6.679e-15*
  - *Interpretasi:* berdasarkan hasil uji Shapiro-Wilk pada variabel Nilai Pelanggan, diperoleh nilai statistik W= 0.94414 dengan
  p- value 6.679e-15. Nilai p-value tersebut jauh lebihh kecil dari tingkat signifikan α = 0.05, sehingga hipotesis nol ditolak.
  Dengan demikian, dapat disimpulkan bahwa data Nilai Pelanggan tidak berdistribusi normal secara statistik.
- **Plot Q-Q:**
  - *Sematkan gambar plot dari folder /results qqployt_Nilai_Pelanggan_Juta_IDR.png*
  - *Interpretasi:*Berdasarkan hasil Q-Q plot, terlihat bahwa sebagian besar titik data berada di sekitar garis diagonal, 
  namun terdapat beberapa titik yang menyimpang, terutama pada bagian ekor distribusi. Penyimpangan ini menunjukkan adanya 
  ketidaknormalan pada data, yang kemungkinan disebabkan oleh nilai-nilai ekstrem pada dataset.
  Meskipun secara visual distribusi data tampak mendekati normal pada bagian tengah, hasil Q-Q plot tetap mendukung 
  hasil uji Shapiro-Wilk yang menyatakan bahwa data tidak sepenuhnya berdistribusi normal.

### 5.3. Analisis Korelasi
- **Nilai Koefisien Korelasi:**
  - *Nilai r = 0.9966743*
  - *Interpretasi:* Berdasarkan hasil analisis, diperoleh nilai koefisien korelasi ρ = 0.9967 dengan p-value < 2.2 × 10⁻¹⁶. 
  Nilai koefisien korelasi yang mendekati angka 1 menunjukkan adanya hubungan positif yang sangat kuat antara kedua variabel.
  Nilai p-value yang jauh lebih kecil dari tingkat signifikansi 0.05 menunjukkan bahwa hubungan tersebut signifikan secara statistik. 
  Hal ini berarti hubungan antara pendapatan tahunan dan nilai pelanggan tidak terjadi secara kebetulan.
  Dengan demikian, dapat disimpulkan bahwa semakin tinggi pendapatan tahunan startup SaaS, maka semakin tinggi pula nilai pelanggan yang dimiliki. 
  Hasil ini didukung oleh visualisasi scatter plot yang menunjukkan pola hubungan meningkat secara konsisten.
- **Visualisasi (Scatter Plot):**
  - *Sematkan gambar plot dari folder /results scatterplot_Pendapatan_Tahunan_Miliar_IDR_vs_Nilai_Pelanggan_Juta_IDR.png*
  - *Interpretasi:* Berdasarkan scatter plot yang dihasilkan, terlihat bahwa titik-titik data membentuk pola meningkat secara konsisten dari kiri bawah 
  ke kanan atas. Pola ini menunjukkan bahwa ketika pendapatan tahunan meningkat, nilai pelanggan juga cenderung meningkat. Tidak terlihat pola acak atau penyebaran 
  yang tidak teratur, melainkan hubungan yang jelas dan searah.
  Hubungan yang tampak pada scatter plot ini sejalan dengan hasil korelasi Spearman, di mana diperoleh nilai koefisien korelasi ρ = 0.9967 yang menunjukkan hubungan positif 
  sangat kuat. Hal ini memperkuat kesimpulan bahwa terdapat hubungan yang hampir sempurna antara pendapatan tahunan dan nilai pelanggan pada startup SaaS.
### 5.4. Analisis Regresi
- **Model Regresi:**
  - *Persamaan regresi: Y = -0.99 + 0.33 *X*
  - *Interpretasi:* 
  Y = Pendapatan Tahunan (Miliar IDR)
  X = Nilai Pelanggan (Juta IDR)
  b₀ (intercept) = −0.99
  b₁ (slope) = 0.33 
  
  Intercept (b₀ = −0.99)
  Nilai intercept menunjukkan bahwa ketika Nilai Pelanggan bernilai 0, maka Pendapatan Tahunan yang diprediksi oleh model adalah −0.99 miliar IDR. Dalam konteks bisnis startup SaaS, 
  kondisi ini bersifat teoritis karena nilai pelanggan nol dan pendapatan negatif tidak merepresentasikan kondisi operasional yang realistis. Oleh karena itu, intercept lebih berfungsi 
  sebagai konstanta matematis dalam model regresi.

  Slope (b₁ = 0.33)
  Nilai slope sebesar 0.33 menunjukkan bahwa setiap kenaikan 1 unit Nilai Pelanggan (1 juta IDR) akan meningkatkan Pendapatan Tahunan sebesar 0.33 miliar IDR. Koefisien bernilai positif 
  ini mengindikasikan adanya hubungan searah, di mana peningkatan nilai pelanggan akan diikuti oleh peningkatan pendapatan tahunan.
- **Evaluasi Model (R-squared):**
  - *Nilai R-squared = 0.99336*
  - *Interpretasi:* Nilai R-squared sebesar 0.99336 menunjukkan bahwa 99.34% variasi Nilai Pelanggan dapat dijelaskan oleh Pendapatan Tahunan. Hal ini berarti model regresi 
  yang digunakan memiliki kemampuan penjelasan yang sangat tinggi, di mana perubahan Nilai Pelanggan hampir sepenuhnya dipengaruhi oleh perubahan Pendapatan Tahunan.
  Sisanya sebesar 0.66% variasi Nilai Pelanggan dipengaruhi oleh faktor lain di luar model, seperti strategi bisnis, kualitas layanan, kondisi pasar, dan faktor eksternal lainnya. 
  Nilai R-squared yang sangat tinggi ini sejalan dengan hasil uji korelasi Spearman yang menghasilkan ρ = 0.9967, yang mengindikasikan hubungan positif sangat kuat antara kedua variabel.
- **Visualisasi (Garis Regresi pada Scatter Plot):**
  - *Sematkan gambar plot dari folder /results plot_regresi_Nilai_Pelanggan_Juta_IDR_vs_Pendapatan_Tahunan_Miliar_IDR.png*
  - *Interpretasi:* Berdasarkan scatter plot yang dilengkapi dengan garis regresi, terlihat bahwa titik-titik data membentuk pola meningkat secara konsisten dari kiri bawah ke kanan atas. 
  Hal ini menunjukkan adanya hubungan positif antara Nilai Pelanggan dan Pendapatan Tahunan.
  Garis regresi melintas di tengah sebaran titik dan mengikuti arah distribusi data dengan sangat baik, yang menandakan bahwa model regresi mampu merepresentasikan hubungan antarvariabel 
  secara akurat. Semakin tinggi Nilai Pelanggan, semakin besar Pendapatan Tahunan yang dihasilkan oleh startup SaaS.
  Kesesuaian garis regresi dengan pola sebaran titik ini memperkuat hasil analisis statistik sebelumnya, yaitu nilai R-squared sebesar 0.99336 dan koefisien korelasi Spearman (ρ = 0.9967), 
  yang menunjukkan bahwa hubungan antara kedua variabel bersifat sangat kuat dan linear.

---

## 6. Kesimpulan

Berdasarkan hasil analisis statistik yang telah dilakukan pada dataset startup SaaS, dapat disimpulkan bahwa terdapat hubungan yang sangat kuat dan signifikan antara Nilai Pelanggan dan Pendapatan Tahunan. 
Analisis statistik deskriptif menunjukkan bahwa data memiliki nilai rata-rata dan sebaran yang cukup beragam, yang mencerminkan perbedaan karakteristik antar startup dalam menghasilkan nilai pelanggan dan pendapatan.
Hasil uji normalitas Shapiro-Wilk menunjukkan bahwa data tidak berdistribusi normal, sehingga analisis hubungan antarvariabel dilakukan menggunakan korelasi Spearman. Uji korelasi Spearman menghasilkan nilai ρ = 0.9967 
dengan p-value < 2.2×10⁻¹⁶, yang menandakan adanya hubungan positif sangat kuat dan signifikan secara statistik antara Nilai Pelanggan dan Pendapatan Tahunan. Hal ini menunjukkan bahwa peningkatan nilai pelanggan cenderung 
diikuti oleh peningkatan pendapatan tahunan secara konsisten. Selanjutnya, analisis regresi linear sederhana menghasilkan persamaan regresi Y = −0.99 + 0.33X, yang menunjukkan bahwa setiap kenaikan Nilai Pelanggan sebesar 1 
juta IDR diperkirakan akan meningkatkan Pendapatan Tahunan sebesar 0.33 miliar IDR. Model regresi ini memiliki nilai R-squared sebesar 0.99336, yang berarti 99.34% variasi Pendapatan Tahunan dapat dijelaskan oleh Nilai Pelanggan. 
Nilai ini mengindikasikan bahwa model memiliki kemampuan prediksi dan tingkat kecocokan yang sangat tinggi.
Visualisasi melalui scatter plot dengan garis regresi memperkuat hasil analisis, di mana pola sebaran titik data mengikuti tren meningkat secara linear dan garis regresi mampu merepresentasikan hubungan antarvariabel dengan 
sangat baik. Dengan demikian, dapat disimpulkan bahwa Nilai Pelanggan merupakan faktor yang sangat dominan dalam menentukan Pendapatan Tahunan pada startup SaaS dalam dataset yang dianalisis.
Secara keseluruhan, hasil penelitian ini menunjukkan bahwa peningkatan nilai pelanggan memiliki peran penting dalam mendorong pertumbuhan pendapatan tahunan. Temuan ini dapat menjadi dasar bagi pengambilan keputusan strategis bagi perusahaan, khususnya dalam merancang strategi peningkatan nilai pelanggan guna meningkatkan kinerja keuangan secara berkelanjutan.