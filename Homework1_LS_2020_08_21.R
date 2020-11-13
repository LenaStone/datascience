#HOMEWORK1
#Import of covid-19 survey data
#ls 8.25.2020
#
#First off, I download the data into an Excel file. To read the Excel file, I use the following code:
library(readxl)
covid_responses <- read_excel("Desktop/covid-responses.xlsx")
View(covid_responses)
#The data has now been imported into RStudio. We will now check to see if it's in tibble format
is(covid_responses)
#Then we convert to the correct format
covid_responses<- as.tibble(covid_responses)
myData<-covid_responses
#I'm using the name of the file in the commands below just for my own clarity, but I'm also assigning the covid_responses file to "myData." I'm going to perform some simple commands to investigate the data.
print(covid_responses)
#This generates quite a lot of info, since the table is 3,460x80 items long. R doesn't show all of it, just the first few lines.
#I will now use the ls() and names() functions to view the objects and variables more clearly
ls(covid_responses)
names(covid_responses)
#if I want to view a certain variable (SelfReported_Behavio_1, for example, which asks people to rate their responses to the statement "I stayed at home" from 1-100), I can use the following command
view(covid_responses$SelfReported_Behavio_1)
#if I want to just print the first 10 rows of the whole dataset, I can use the code below
print(covid_responses, digits = NULL,quote = FALSE, right = TRUE, row.names = TRUE, max = 10)
#or, since I'm not changing any of the default settings, I could just write
print(covid_responses, n=10)
#the R help section also recommended the following code as.data.frame to see if the object is a data frame and to coerce it if possible
as.data.frame(covid_responses, row.names = NULL, covid_responses, responseName = "Freq", stringsAsFactors = TRUE, sep = "", base = list(LETTERS))



