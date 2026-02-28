#' Lucide icon
#'
#' Renders a 'Lucide' icon as an inline 'SVG' element.
#'
#' @param name Icon name (e.g. `"chevron-right"`, `"house"`, `"settings"`).
#'   See <https://lucide.dev/icons/> for the full list.
#' @param size Icon size in pixels. Applied to both `width` and `height`.
#'   Default `24`.
#' @param color Icon colour. Any valid CSS colour value. Default
#'   `"currentColor"` (inherits from parent element).
#' @param stroke_width Stroke width. Default `2`.
#' @param class Additional CSS classes to add to the `<svg>` element.
#' @param ... Additional HTML attributes passed to the `<svg>` element.
#'
#' @return An [htmltools::tags] object (inline `<svg>`).
#'
#' @examples
#' lucide("house")
#' lucide("chevron-right", size = 16, color = "red")
#' lucide("settings", stroke_width = 1.5, class = "my-icon")
#'
#' @importFrom htmltools tag
#' @export
lucide <- function(
  name,
  size = 24,
  color = "currentColor",
  stroke_width = 2,
  class = NULL,
  ...
) {
  nodes <- lucide_icons[[name]]
  if (is.null(nodes)) {
    stop(
      "Icon '",
      name,
      "' not found in Lucide. ",
      "See https://lucide.dev/icons/ for available icons.",
      call. = FALSE
    )
  }

  # Convert each node [tag, attrs] to an htmltools tag
  children <- lapply(nodes, function(node) {
    tag_name <- node[[1]]
    attrs <- node[[2]]
    tag(tag_name, attrs)
  })

  tag(
    "svg",
    c(
      list(
        xmlns = "http://www.w3.org/2000/svg",
        width = size,
        height = size,
        viewBox = "0 0 24 24",
        fill = "none",
        stroke = color,
        `stroke-width` = stroke_width,
        `stroke-linecap` = "round",
        `stroke-linejoin` = "round",
        class = class,
        `aria-hidden` = "true",
        ...
      ),
      children
    )
  )
}

#' List available Lucide icons
#'
#' Returns the names of all icons bundled in this version of 'lucidr'.
#'
#' @return A character vector of icon names.
#'
#' @examples
#' head(lucide_list(), 10)
#' length(lucide_list())
#'
#' @export
lucide_list <- function() {
  sort(names(lucide_icons))
}
