## code to prepare `header_img_data` dataset goes here

set.seed(100)
extdata <- readr::read_csv(file = "inst/extdata/sample_data.csv")

header_img_data <- ggplot2::ggplot(data = extdata, mapping = aes(x=x, y=y)) +
  ggplot2::geom_point() +
  ggplot2::theme_void() +
  ggplot2::theme(legend.position="none") +
  ggplot2::ggsave(filename = "sample_header.jpg",
                  path = "inst/extdata",
                  device = "jpeg",
                  width = 3,
                  height = 1,
                  dpi = 300,
                  units = "in"
                  )

# usethis::use_data(header_img_data, overwrite = TRUE)
