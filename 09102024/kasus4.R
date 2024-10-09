# Set seed untuk reproduktibilitas
set.seed(101)

# Parameter populasi
mean_populasi <- 75
sd_populasi <- 12
n <- 30  # Ukuran sampel
banyak_sampel <- 500  # Banyaknya distribusi sampling

# Simulasi distribusi sampling
var_sampel <- replicate(banyak_sampel, {
  sampel <- rnorm(n, mean = mean_populasi, sd = sd_populasi)
  var(sampel)
})

# Plot distribusi sampling
hist(var_sampel, main = "Distribusi Sampling dari Variansi Nilai Ujian",
     xlab = "Variansi Nilai", col = "#00ffaa", breaks = 30)

# Menambahkan garis untuk variansi
abline(v = mean(var_sampel), col = "darkgreen", lwd = 2)

rm(list = ls())