# Set seed untuk reproduktibilitas
set.seed(202)

# Parameter populasi
mean_populasi <- 35
sd_populasi <- 8
n <- 60  # Ukuran sampel
banyak_sampel <- 500  # Banyaknya distribusi sampling

# Simulasi distribusi sampling
sd_sampel <- replicate(banyak_sampel, {
  sampel <- rnorm(n, mean = mean_populasi, sd = sd_populasi)
  sd(sampel)
})

# Plot distribusi sampling
hist(sd_sampel, main = "Distribusi Sampling dari Simpangan Baku Usia",
     xlab = "Simpangan Baku Usia", col = "#13bff5", breaks = 30)

# Menambahkan garis untuk simpangan baku
abline(v = mean(sd_sampel), col = "#76310e", lwd = 2)

rm(list = ls())