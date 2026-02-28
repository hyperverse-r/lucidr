library(plumber2)
library(htmxr)

pr <- api(system.file("examples/icons/api.R", package = "lucidr"))
pr <- hx_serve_assets(pr)
pr$ignite(block = TRUE)
