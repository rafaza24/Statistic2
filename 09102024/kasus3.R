# Set seed untuk reproduktibilitas
set.seed(789)

# Parameter populasi
mean_populasi <- 70
sd_populasi <- 15
n <- 40  # Ukuran sampel
banyak_sampel <- 500  # Banyaknya distribusi sampling

# Simulasi distribusi sampling
median_sampel <- replicate(banyak_sampel, {
  sampel <- rnorm(n, mean = mean_populasi, sd = sd_populasi)
  median(sampel)
})

# Plot distribusi sampling
hist(median_sampel, main = "Distribusi Sampling dari Median Berat Badan",
     xlab = "Median Berat Badan", col = "#e3ff57", breaks = 30)

# Menambahkan garis untuk median
abline(v = median(median_sampel), col = "#0087ff", lwd = 2)

rm(list = ls())

