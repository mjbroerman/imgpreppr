
#' Crop and scale header to square
#'
#' @param image a jpeg image
#' @param width_px output width pixels
#' @param height_px output height pixels
#' @param wcrop_px selected width pixels to crop, defaults to center?
#' @param hcrop_px selected height pixels to crop defaults to center?
#' @param woffset_px plus or minus horizontal pixels from center most
#' @param hoffset_px plus or minus vertical pixels from center most
#'
#' @return
#' @export
#'
#' @import magrittr
#' @importFrom magick image_read image_crop image_scale image_write
#' @examples
#' \dontrun{
#' blog_img_sq("some_image.jpg")
#' }
#'
blog_img_sq <- function(image,
                        width_px = 300,
                        height_px = 300,
                        wcrop_px = 2988,
                        hcrop_px = 2988,
                        woffset_px = 1200,
                        hoffset_px = 0) {
  crop_spec <- paste0(wcrop_px, "x", hcrop_px, "+", woffset_px, "+", hoffset_px)
  scale_spec <- paste0(width_px, "x", height_px)

  img <- image_read(image)
  img %>%
    image_crop(crop_spec) %>%
    image_scale(scale_spec) %>%
    image_write("header-sq.jpg")
}


#' Crop and scale header to wide
#'
#' @param image a jpeg image
#' @param width_px output width pixels
#' @param height_px output height pixels
#' @param wcrop_px selected width pixels to crop, defaults to center?
#' @param hcrop_px selected height pixels to crop defaults to center?
#' @param woffset_px plus or minus horizontal pixels from center most
#' @param hoffset_px plus or minus vertical pixels from center most
#'
#' @return
#' @export
#'
#' @import magrittr
#' @importFrom magick image_read image_crop image_scale image_write
#' @examples
#' \dontrun{
#' blog_img_sq("some_image.jpg")
#' }
blog_img_wd <- function(image,
                        width_px = 800,
                        height_px = 200,
                        wcrop_px = 5000,
                        hcrop_px = 1000,
                        woffset_px = 200,
                        hoffset_px = 1400) {
  crop_spec <- paste0(wcrop_px, "x", hcrop_px, "+", woffset_px, "+", hoffset_px)
  scale_spec <- paste0(width_px, "x", height_px)
  img <- image_read(image)
  img %>%
    image_crop(crop_spec) %>%
    image_scale(scale_spec) %>%
    image_write("header-wd.jpg")
}
