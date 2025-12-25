# =================================================================
# SKRIP 2: ANALISIS STATISTIK DESKRIPTIF
# =================================================================
#
# TUJUAN:
# 1. Menghitung ukuran pemusatan data (mean, median, modus).
# 2. Menghitung ukuran sebaran data (standar deviasi, range, kuartil).
# 3. Membuat visualisasi data (histogram dan boxplot).
#
# =================================================================


# -----------------------------------------------------------------
# Langkah 0: Persiapan
# -----------------------------------------------------------------

# Memanggil library yang dibutuhkan
library(ggplot2)

# Membuat folder results jika belum ada
dir.create("../results", showWarnings = FALSE)

# Jika variabel 'data_bersih' belum ada, jalankan skrip 01
if (!exists("data_startup_saas")) {
  source("01_data_preparation.R")
  print("Menjalankan skrip 01_data_preparation.R...")
}

# -----------------------------------------------------------------
# Menentukan kolom numerik yang dianalisis
# -----------------------------------------------------------------
kolom_analisis <- "Nilai_Pelanggan_Juta_IDR"

# Validasi kolom
if (!kolom_analisis %in% names(data_startup_saas)) {
  stop(
    paste(
      "Kolom '", kolom_analisis,
      "' tidak ditemukan dalam data. Periksa kembali nama kolom.",
      sep = ""))}

# -----------------------------------------------------------------
# Langkah 1: Ukuran Pemusatan Data
# -----------------------------------------------------------------

# Mean
mean_value <- mean(data_startup_saas[[kolom_analisis]], na.rm = TRUE)
cat("Mean :", round(mean_value, 2), "\n")

# Median
median_value <- median(data_startup_saas[[kolom_analisis]], na.rm = TRUE)
cat("Median :", round(median_value, 2), "\n")

# Modus
get_mode <- function(v) {
  v <- v[!is.na(v)]
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode_value <- get_mode(data_startup_saas[[kolom_analisis]])
cat("Modus :", mode_value, "\n")

# -----------------------------------------------------------------
# Langkah 2: Ukuran Sebaran Data
# -----------------------------------------------------------------

# Standar Deviasi
sd_value <- sd(data_startup_saas[[kolom_analisis]], na.rm = TRUE)
cat("Standar Deviasi :", round(sd_value, 2), "\n")

# Range
range_value <- range(data_startup_saas[[kolom_analisis]], na.rm = TRUE)
cat("Range :", range_value[1], "-", range_value[2], "\n")

# Ringkasan 5 Angka
cat("\nRingkasan 5 Angka:\n")
summary_value <- summary(data_startup_saas[[kolom_analisis]])
print(summary_value)

# -----------------------------------------------------------------
# Langkah 3: Visualisasi Data
# -----------------------------------------------------------------

# A. Histogram
hist_plot <- ggplot(data_startup_saas, aes_string(x = kolom_analisis)) +
  geom_histogram(bins = 20, fill = "skyblue", color = "white") +
  geom_vline(
    xintercept = mean_value,
    color = "red",
    linetype = "dashed",
    linewidth = 1
  ) +
  labs(
    title = paste("Histogram", kolom_analisis),
    subtitle = paste("Mean =", round(mean_value, 2)),
    x = kolom_analisis,
    y = "Frekuensi"
  ) +
  theme_minimal()

print(hist_plot)

ggsave(
  filename = paste0("../results/histogram_", kolom_analisis, ".png"),
  plot = hist_plot,
  width = 8,
  height = 6
)

ss# B. Boxplot
box_plot <- ggplot(data_startup_saas, aes_string(y = kolom_analisis)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(
    title = paste("Boxplot", kolom_analisis),
    y = kolom_analisis
  ) +
  theme_minimal()

print(box_plot)

ggsave(
  filename = paste0("../results/boxplot_", kolom_analisis, ".png"),
  plot = box_plot,
  width = 6,
  height = 8
)

# -----------------------------------------------------------------
# Pesan Akhir
# -----------------------------------------------------------------
cat("\nAnalisis statistik deskriptif selesai.\n")
cat("Silakan interpretasikan hasilnya pada file README.md\n")

