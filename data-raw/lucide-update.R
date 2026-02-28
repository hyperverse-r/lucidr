# Update Lucide icons data from lucide-static
#
# Run this script to update the bundled icons to a new version:
#   source("data-raw/lucide-update.R")
#
# Icons are stored in sysdata.rda as a named list (lucide_icons):
#   names(lucide_icons)       → icon names (e.g. "chevron-right")
#   lucide_icons[["chevron-right"]]  → list of SVG nodes [[tag, attrs], ...]

lucide_version <- "0.575.0"
url <- sprintf(
  "https://cdn.jsdelivr.net/npm/lucide-static@%s/icon-nodes.json",
  lucide_version
)

message("Downloading Lucide icons v", lucide_version, "...")
lucide_icons <- jsonlite::fromJSON(url, simplifyVector = FALSE)

message("  ", length(lucide_icons), " icons loaded.")
message("  First icons: ", paste(head(names(lucide_icons), 5), collapse = ", "))

usethis::use_data(lucide_icons, internal = TRUE, overwrite = TRUE)

message("Done. sysdata.rda updated.")
