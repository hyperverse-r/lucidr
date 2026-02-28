library(lucidr)
library(htmxr)
library(htmltools)

showcase_icons <- c(
  "house",
  "settings",
  "user",
  "search",
  "bell",
  "heart",
  "star",
  "check",
  "x",
  "arrow-right",
  "chevron-down",
  "download",
  "upload",
  "trash-2",
  "pencil",
  "mail",
  "phone",
  "calendar",
  "clock",
  "globe"
)

icon_card <- function(name) {
  tags$div(
    style = "display:flex; flex-direction:column; align-items:center; gap:8px; padding:16px; border:1px solid #e5e7eb; border-radius:8px;",
    lucide(name, size = 32),
    tags$span(
      style = "font-size:12px; color:#6b7280; font-family:monospace;",
      name
    )
  )
}

#* @get /
#* @parser none
#* @serializer html
function() {
  hx_page(
    hx_head(title = "lucidr — Icon showcase"),
    tags$div(
      style = "max-width:800px; margin:40px auto; padding:0 16px; font-family:sans-serif;",
      tags$h1(style = "margin-bottom:8px;", "Lucide Icons"),
      tags$p(
        style = "color:#6b7280; margin-bottom:32px;",
        "A sample of icons from the Lucide library, rendered as inline SVG."
      ),
      tags$div(
        style = "display:grid; grid-template-columns:repeat(auto-fill,minmax(120px,1fr)); gap:12px;",
        lapply(showcase_icons, icon_card)
      ),
      tags$p(
        style = "margin-top:32px; color:#6b7280; font-size:14px;",
        "Total available: ",
        tags$strong(length(lucide_list())),
        " icons. Use ",
        tags$code("lucide_list()"),
        " to browse them all."
      )
    )
  )
}
