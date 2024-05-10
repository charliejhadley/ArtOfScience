library(tidyverse)
library(shiny)
library(magick)
library(here)
library(shinycssloaders)

download_and_read_image <- function(fig_url, file_name){
  download.file(fig_url,
                here::here(file_name))
  
  image_read(file_name)
}

url_image_1 <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"

image_1 <- url_image_1 %>% 
  download_and_read_image(here::here("image-1.jpg"))


url_image_2 <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"

image_2 <- url_image_2 %>% 
  download_and_read_image(here::here("image-1.jpg"))

url_image_3 <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"

image_3 <- url_image_3 %>% 
  download_and_read_image(here::here("image-1.jpg"))
