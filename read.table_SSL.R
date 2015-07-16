#reading a file from a website using SSL encryption

#create a temporary file path using the tempfile() function

temp_path <- tempfile()

download.file("https://...........", destfile = temp_path, method = "curl")

new_data <- read.csv(temp_path)