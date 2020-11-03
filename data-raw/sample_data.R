## code to prepare `sample_data` dataset goes here

set.seed(100)
x = rnorm(100)
y = x*2 + rnorm(100)

sample_data <- tibble::data_frame(x = x, y = y)

readr::write_csv(sample_data, file = "inst/extdata/sample_data.csv")

usethis::use_data(sample_data, overwrite = TRUE)

