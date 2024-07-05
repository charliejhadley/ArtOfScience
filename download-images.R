library(tidyverse)
library(here)
library(tictoc)



url_image_1 <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"

url_image_2 <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"

url_image_3 <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"


download_convert_make_smaller <- function(img_url, new_image_name, reduce_size_factor = 6){
  
  temp_jpg_file <- tempfile(fileext = ".jpg")
  
  download.file(img_url,
                temp_jpg_file)
  
  img_orig <- image_read(temp_jpg_file)
  
  width_new_image <- round(image_info(img_orig)$width / reduce_size_factor)
  
  height_new_image <- round(image_info(img_orig)$height / reduce_size_factor)
  
  img_orig %>% 
    image_resize(paste0(width_new_image, "x", height_new_image)) %>% 
    image_write(here::here(paste0("shiny-app/", new_image_name)))
  
}

url_image_1 %>% 
  download_convert_make_smaller("image-1.png")


url_image_2 %>% 
  download_convert_make_smaller("image-2.png")


url_image_3 %>% 
  download_convert_make_smaller("image-3.png")





# Absolute junk lives under here ------------------------------------------



download_convert_make_smaller(url_image_1, "great-image.png")


image_read(here::here("shiny-app/image-3.jpg")) %>% 
  image_resize("1771x1279") %>% 
  image_convert("png") %>%
  image_write(here::here("shiny-app/image-3.png"),
              density = "50x50")


download_convert_make_smaller(url_image_1)

image_info(image_1)$width

tempfile(fileext = ".jpg")


tic("dowload file 1")
download.file(url_image_1,
              here::here("shiny-app/image-1.jpg"))

image_read(here::here("shiny-app/image-1.jpg")) %>% 
  image_convert("png") %>% 
  image_write(here::here("shiny-app/image-1.png"))

toc()


tic("dowload file 2")
download.file(url_image_2,
              here::here("shiny-app/image-2.jpg"))

image_read(here::here("shiny-app/image-2.jpg")) %>% 
  image_convert("png") %>% 
  image_write(here::here("shiny-app/image-2.png"))

toc()

tic("dowload file 3")
download.file(url_image_3,
              here::here("shiny-app/image-3.jpg"))


"10631×7678"
"factor 6: 1771×1279"


image_read(here::here("shiny-app/image-3.jpg")) %>% 
  image_resize("1771x1279") %>% 
  image_convert("png") %>%
  image_write(here::here("shiny-app/image-3.png"),
              density = "50x50")

toc()