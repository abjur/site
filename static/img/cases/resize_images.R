library(magrittr)
"static/img/pesquisas/camaras.png" %>%
  magick::image_read()



x <- "static/img/pesquisas/carf.png"

resize_image("static/img/pesquisas/obsrjrj.png")
resize_image <- function(x) {
  bkp <- paste0(
    fs::path_ext_remove(x),
    paste0("_bkp.", fs::path_ext(x))
  )
  if (!file.exists(bkp)) fs::file_copy(x, bkp)
  img <- magick::image_read(x)
  ar <- 850/742
  h <- magick::image_info(img)$height
  w <- magick::image_info(img)$width
  border <- round((w / ar - h) / 2)
  img %>%
    magick::image_border(
      "white",
      paste0("x", border)
    ) %>%
    magick::image_write(x)
}

fs::dir_ls("static/img/pesquisas", regexp = "jpg|png|svg") %>%
  purrr::walk(resize_image)


images <- fs::dir_ls("static/img/pesquisas", regexp = "jpg|png|svg") %>%
  purrr::map(magick::image_read)

images[[5]]
