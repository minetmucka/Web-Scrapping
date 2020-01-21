#########################################################################################################################################
## Objective: Web scraping                                                                                                              #
## Data source: titanic data set split into train and test                                                                              #
## Please install "pdftools" package: install.packages("pdftools") for text extraction                                                  #
#########################################################################################################################################


install.packages("pdftools")
library(pdftools)

#Read file from your computer/path to folder
#Use double backslash in Windows path to folder ('\\')
file.path("C:\\Users\\muckam\\Desktop\\DataScienceBootcamp\\Homework Answers",
          "./Bootcamp R Worksheet Solutions.pdf")

#Dowload file online
download.file("http://places.csail.mit.edu/places_NIPS14.pdf",
              "./places_NIPS14.pdf")

#Parse PDF into raw text (ignore error warnings for now)
text <- pdf_text("./places_NIPS14.pdf")
text

#Split text into sentences
text <- unlist(strsplit(text, NULL, fixed = TRUE))

#Search for sentences that contain the patterns "Figure"
#or "Table" and extract only those sentences
text[grep(pattern = "Figure|Table", text, ignore.case = T)]

#Output:
#[1] "      Figure 1: Image samples from the scene categories grouped by their queried adjectives"  
#[2] "\r\n       Figure 2: Comparison of the number of images per scene category in three databases"
#[3] "Table 1: Classification accuracy on the test set of Places 205 and the test set of SUN 205" 