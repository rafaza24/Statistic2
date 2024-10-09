# Set seed untuk reproduktibilitas
set.seed(456)

# Parameter populasi
prop_populasi <- 0.60
n <- 100  # Ukuran sampel
banyak_sampel <- 500  # Banyaknya distribusi sampling

# Simulasi distribusi sampling
prop_sampel <- replicate(banyak_sampel, {
  sampel <- rbinom(n, 1, prop_populasi)
  mean(sampel)
})

# Plot distribusi sampling
hist(prop_sampel, main = "Distribusi Sampling dari Proporsi Orang yang Setuju",
     xlab = "Proporsi Setuju", col = "#eaea40", breaks = 30)

# Menambahkan garis untuk mean
abline(v = mean(prop_sampel), col = "red", lwd = 4)
