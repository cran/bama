## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("bama")

## ---- eval = FALSE------------------------------------------------------------
#  # install.packages(devtools)
#  devtools::install_github("umich-cphds/bama", built_opts = c())

## ---- eval = FALSE------------------------------------------------------------
#  library(bama)
#  # print just the first 10 columns
#  head(bama.data[,1:10])

## ---- eval = FALSE------------------------------------------------------------
#  Y <- bama.data$y
#  A <- bama.data$a
#  
#  # grab the mediators from the example data.frame
#  M <- as.matrix(bama.data[, paste0("m", 1:100)], nrow(bama.data))
#  
#  # We just include the intercept term in this example as we have no covariates
#  C1 <- matrix(1, 1000, 1)
#  C2 <- matrix(1, 1000, 1)
#  beta.m  <- rep(0, 100)
#  alpha.a <- rep(0, 100)
#  
#  out <- bama(Y = Y, A = A, M = M, C1 = C1, C2 = C2, method = "BSLMM", seed = 1234,
#              burnin = 1000, ndraws = 1100, weights = NULL, inits = NULL,
#              control = list(k = 2, lm0 = 1e-04, lm1 = 1, l = 1))
#  
#  # The package includes a function to summarise output from 'bama'
#  summary <- summary(out)
#  head(summary)
#  
#  # Product Threshold Gaussian
#  ptgmod = bama(Y = Y, A = A, M = M, C1 = C1, C2 = C2, method = "PTG", seed = 1234,
#                burnin = 1000, ndraws = 1100, weights = NULL, inits = NULL,
#                control = list(lambda0 = 0.04, lambda1 = 0.2, lambda2 = 0.2))
#  
#  mean(ptgmod$beta.a)
#  apply(ptgmod$beta.m, 2, mean)
#  apply(ptgmod$alpha.a, 2, mean)
#  apply(ptgmod$betam_member, 2, mean)
#  apply(ptgmod$alphaa_member, 2, mean)
#  
#  # Gaussian Mixture Model
#  gmmmod = bama(Y = Y, A = A, M = M, C1 = C1, C2 = C2, method = "GMM", seed = 1234,
#                burnin = 1000, ndraws = 1100, weights = NULL, inits = NULL,
#                control = list(phi0 = 0.01, phi1 = 0.01))
#  
#  mean(gmmmod$beta.a)
#  apply(gmmmod$beta.m, 2, mean)
#  apply(gmmmod$alpha.a, 2, mean)
#  
#  mean(gmmmod$sigma.sq.a)
#  mean(gmmmod$sigma.sq.e)
#  mean(gmmmod$sigma.sq.g)

