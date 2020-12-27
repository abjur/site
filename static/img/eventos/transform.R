library(magick)

abj <- viridis::viridis(2, 1, .2, .8)
image_read("static/img/eventos/placeholder.png") %>%
  image_resize("x600") %>%
  image_border("white", "60x0") %>%
  image_write("static/img/eventos/cafe-09.png")
