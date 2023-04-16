panel.hist = function(x, ...) { 
  usr = par("usr"); on.exit(par(usr))
  par(usr = c(user[1:2], 0, 1.5))
  hist(x, freq = FALSE, col = "cyan", add=TRUE)
  lines(density(x))
}

pairs(rt1)

panel.hist = function(x, ...) { 
  usr = par("usr"); on.exit(par(usr))
  par(usr = c(user[1:2], 0, 1.5))
  hist(x, freq = FALSE, col = "cyan", add=TRUE)
  lines(density(x))
}

pairs(rt1[, 1:6], upper.panel = panel.smooth, diag.panel = panel.hist)