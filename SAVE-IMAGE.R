require(httr)

headers = c(
  `user-agent` = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36'
)

 httr::GET(url = "https://repository.lboro.ac.uk/ndownloader/files/44908990/preview/44908990/preview.jpg", 
                 httr::add_headers(.headers=headers),
                 write_disk("foo.jpg"))

head(res)


httr::write_disk()