test_that("Sentinel2_bands() returns expected members", {
  expect_type(Sentinel2_bands(), "list")
  expect_s3_class(Sentinel2_bands()[[1]], "waveband")
  expect_equal(length(Sentinel2_bands()), 13)
  expect_equal(length(Sentinel2_bands("MSI")), 13)
  expect_equal(length(Sentinel2_bands("10m")), 4)
  expect_equal(length(Sentinel2_bands("20m")), 6)
  expect_equal(length(Sentinel2_bands("60m")), 3)
})
