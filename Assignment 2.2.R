#1. Read multiple JSON files into a directory to convert into a dataset. I have files text1, text2, text3 in the directory JSON. 
Install.packages("rjson")
Library(rjson)
Data<- fromJSON( json_str, file, method = "C", unexpected.escape = "error" )
Json_data<- as.data.frame(Data)

#2. Parse the following JSON into a data frame.
install.packages("jsonlite")
library(jsonlite)
js <-  '[{"name": null, "release_date_local": null, "title": "3 (2011)",  
"opening_weekend_take": 1234, "year": 2011, 
"release_date_wide": "2011-09-16", "gross": 59954 }]'
fromJSON(js)

#3. Write a script for Variable Binning using R. 
#we have created vector X that contains positive numbers that we want to bin/discretize. 
#For this vector, we want the numbers [0, 10) to show up just as they exist in the vector, but numbers [10,???) to be 10+.
x <- c(0,1,3,4,2,4,2,5,43,432,34,2,34,2,342,3,4,2)
binned.x <- as.factor(ifelse(x > 10,"10+",x))
