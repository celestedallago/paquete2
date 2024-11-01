test_that("punto de rocio", {
  expect_equal(object = punto_rocio(3), expected = "El punto de rocio es bajo; el aire se siente fresco y seco.")
})

test_that("punto de rocio", {
  expect_equal(object = punto_rocio(-2), expected = "El punto de rocio es muy bajo; el aire es muy seco.")
})

test_that("punto de rocio", {
  expect_equal(object = punto_rocio(12), expected = "El punto de rocio es moderado; las condiciones son comodas.")
})

test_that("punto de rocio", {
  expect_equal(object = punto_rocio(16), expected = "El punto de rocio es alto; el aire se siente un poco humedo.")
})

test_that("punto de rocio", {
  expect_equal(object = punto_rocio(30), expected = "El punto de rocio es muy alto; las condiciones son muy humedas y pueden sentirse incomodas.")
})
