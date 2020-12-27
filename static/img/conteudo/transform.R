library(magick)

abj <- viridis::viridis(2, 1, .2, .8)
abj_op <- viridis::viridis(2, .04, .2, .8)
image_read("static/img/conteudo/jurimetria_bkp.png") %>%
  image_resize("200") %>%
  image_colorize(opacity = 100, color = abj[1]) %>%
  image_background(color = abj_op[2]) %>%
  image_border(abj_op[2], "320x180") %>%
  image_write("static/img/conteudo/jurimetria.png")

abj <- viridis::viridis(2, 1, .2, .8)
abj_op <- viridis::viridis(2, .1, .2, .8)
image_read("static/img/conteudo/dados_bkp.jpeg") %>%
  image_resize("400") %>%
  image_modulate(brightness = 105) %>%
  image_colorize(opacity = 5, color = abj_op[2]) %>%
  image_enhance() %>%
  image_shadow(color = abj_op[2], geometry = "100x100")
  # image_blur(100, sigma = .6) %>%
  image_write("static/img/conteudo/dados.png")

image_read("static/img/conteudo/dados_bkp.png") %>%
  image_resize("400") %>%
  image_modulate(brightness = 105) %>%
  image_colorize(opacity = 5, color = abj_op[2]) %>%
  image_enhance() %>%
  # image_blur(100, sigma = .6) %>%
  image_write("static/img/conteudo/dados.png")


image_read("static/img/conteudo/obs_bkp.png") %>%
  image_resize("400") %>%
  image_background(color = abj_op[2]) %>%
  image_border(abj_op[2], "300x140") %>%
  image_write("static/img/conteudo/obs.png")
