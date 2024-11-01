test_that("Mensaje humedad", {
  expect_equal(object = mensaje_humedad(30), expected = "La humedad es moderada.")
})

test_that("Mensaje humedad", {
  expect_equal(object = mensaje_humedad(25), expected = "La humedad es baja.")
})

test_that("Mensaje humedad", {
  expect_equal(object = mensaje_humedad(65), expected = "La humedad es alta.")
})

test_that("Mensaje humedad", {
  expect_equal(object = mensaje_humedad(90), expected =  "La humedad es muy alta.")
})
