# Lucide icon

Renders a 'Lucide' icon as an inline 'SVG' element.

## Usage

``` r
lucide(
  name,
  size = 24,
  color = "currentColor",
  stroke_width = 2,
  class = NULL,
  ...
)
```

## Arguments

- name:

  Icon name (e.g. `"chevron-right"`, `"house"`, `"settings"`). See
  <https://lucide.dev/icons/> for the full list.

- size:

  Icon size in pixels. Applied to both `width` and `height`. Default
  `24`.

- color:

  Icon colour. Any valid CSS colour value. Default `"currentColor"`
  (inherits from parent element).

- stroke_width:

  Stroke width. Default `2`.

- class:

  Additional CSS classes to add to the `<svg>` element.

- ...:

  Additional HTML attributes passed to the `<svg>` element.

## Value

An
[htmltools::tags](https://rstudio.github.io/htmltools/reference/builder.html)
object (inline `<svg>`).

## Examples

``` r
lucide("house")
#> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
#>   <path d="M15 21v-8a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1v8"></path>
#>   <path d="M3 10a2 2 0 0 1 .709-1.528l7-6a2 2 0 0 1 2.582 0l7 6A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
#> </svg>
lucide("chevron-right", size = 16, color = "red")
#> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="red" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
#>   <path d="m9 18 6-6-6-6"></path>
#> </svg>
lucide("settings", stroke_width = 1.5, class = "my-icon")
#> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="my-icon" aria-hidden="true">
#>   <path d="M9.671 4.136a2.34 2.34 0 0 1 4.659 0 2.34 2.34 0 0 0 3.319 1.915 2.34 2.34 0 0 1 2.33 4.033 2.34 2.34 0 0 0 0 3.831 2.34 2.34 0 0 1-2.33 4.033 2.34 2.34 0 0 0-3.319 1.915 2.34 2.34 0 0 1-4.659 0 2.34 2.34 0 0 0-3.32-1.915 2.34 2.34 0 0 1-2.33-4.033 2.34 2.34 0 0 0 0-3.831A2.34 2.34 0 0 1 6.35 6.051a2.34 2.34 0 0 0 3.319-1.915"></path>
#>   <circle cx="12" cy="12" r="3"></circle>
#> </svg>
```
