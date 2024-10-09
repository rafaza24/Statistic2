set.seed(123)
mean_populasi <- 170
sd_populasi <- 10
n <- 50  # Ukuran sampel
banyak_sampel <- 500  # Banyaknya distribusi sampling

# Simulasi distribusi sampling
rata_sampel <- replicate(banyak_sampel, {
  sampel <- rnorm(n, mean = mean_populasi, sd = sd_populasi)
  mean(sampel)
})

# Plot distribusi sampling
hist(rata_sampel, main = "Distribusi Sampling dari Rata-rata Tinggi Badan",
     xlab = "Rata-rata Tinggi Badan", col = "#7bea40", breaks = 30)

# Menambahkan garis untuk mean
abline(v = mean(rata_sampel), col = "red", lwd = 2)

