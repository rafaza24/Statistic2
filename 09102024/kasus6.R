# Set seed untuk reproduktibilitas
set.seed(303)

# Parameter populasi
prop_populasi <- 0.05
n <- 100  # Ukuran sampel
banyak_sampel <- 500  # Banyaknya distribusi sampling

# Simulasi distribusi sampling
prop_error_sampel <- replicate(banyak_sampel, {
  sampel <- rbinom(n, 1, prop_populasi)
  mean(sampel)
})

# Plot distribusi sampling
hist(prop_error_sampel, main = "Distribusi Sampling dari Proporsi Kesalahan Mesin",
     xlab = "Proporsi Kesalahan", col = "lightpink", breaks = 30)

# Menambahkan garis untuk mean
abline(v = mean(prop_error_sampel), col = "red", lwd = 2)


rm(list = ls())