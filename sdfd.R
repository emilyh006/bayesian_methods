


prior <- function(theta){
  res = (20000)^4
  res = res/ factorial(3)
  res = res * (theta^3) 
  res = res * exp(-1 * 20000 * theta)
  return(res)
}


curve(prior, 0.0002, 0.001)

posterior <- function (theta){
  res = (20000 + 16178) ^ 9
  res = res/ factorial(9)
  res = res * exp(-1 * (20000 + 16178) * theta )
  return(res)
}

curve(prior, 0.0002, 0.001)
curve(posterior, 0.0002, 0.001, add = T, lty = 2)

curve(posterior, 0, 10)








