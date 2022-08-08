# banners da pagina inicial

magick::image_read("static/assets/dados.jpg") |>
  magick::image_resize("1920x") |>
  magick::image_crop("1920x768+0+200") |>
  magick::image_modulate(brightness = 40) |>
  magick::image_write("static/assets/dados-min.jpg")

magick::image_read("static/assets/ensino.jpg") |>
  magick::image_resize("1920x") |>
  magick::image_crop("1920x768+0+200") |>
  magick::image_modulate(brightness = 40) |>
  magick::image_write("static/assets/ensino-min.jpg")

magick::image_read("static/assets/pesquisa.jpg") |>
  magick::image_resize("1920x") |>
  magick::image_crop("1920x768+0+200") |>
  magick::image_modulate(brightness = 40) |>
  magick::image_write("static/assets/pesquisa-min.jpg")

# banners dos cursos

magick::image_read("static/img/cursos/janko-ferlic-sfL_QOnmy00-unsplash.jpg") |>
  magick::image_resize("1024x") |>
  magick::image_crop("x683") |>
  magick::image_modulate(brightness = 60) |>
  magick::image_write("static/img/cursos/curso-1.jpg")

magick::image_read("static/img/cursos/the-climate-reality-project-Hb6uWq0i4MI-unsplash.jpg") |>
  magick::image_resize("1024x") |>
  magick::image_modulate(brightness = 60) |>
  magick::image_write("static/img/cursos/curso-2.jpg")

magick::image_read("static/img/cursos/scott-graham-OQMZwNd3ThU-unsplash.jpg") |>
  magick::image_resize("1024x") |>
  magick::image_modulate(brightness = 60) |>
  magick::image_write("static/img/cursos/curso-3.jpg")

magick::image_read("static/img/cursos/linkedin-sales-solutions-46bom4lObsA-unsplash.jpg") |>
  magick::image_resize("1024x") |>
  magick::image_modulate(brightness = 60) |>
  magick::image_write("static/img/cursos/curso-4.jpg")
