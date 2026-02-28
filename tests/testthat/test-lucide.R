test_that("lucide() returns an svg tag", {
  icon <- lucide("house")
  expect_s3_class(icon, "shiny.tag")
  expect_equal(icon$name, "svg")
})

test_that("lucide() applies size and color", {
  icon <- lucide("house", size = 16, color = "red")
  expect_equal(icon$attribs$width, 16)
  expect_equal(icon$attribs$stroke, "red")
})

test_that("lucide() errors on unknown icon", {
  expect_error(lucide("not-an-icon"), "not found in Lucide")
})

test_that("lucide_list() returns a sorted character vector", {
  icons <- lucide_list()
  expect_type(icons, "character")
  expect_true(length(icons) > 1000)
  expect_equal(icons, sort(icons))
})
