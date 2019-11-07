#Biocomputing Exercise 6

#Question 1
#R code that replicates head function in unix
#let x = filename
#let y = number of lines

#load file as a dataframe
NumberLines<-read.csv("x")

#output first y lines of file
NumberLines[1:y,] 

#Question 2
#in iris.csv file
#first load .csv file as a dataframe

iris<-read.csv("iris.csv")

#Question 2 Part 1
#Print last 2 rows in the last 2 columns

iris[149:150, 4:5]

#Question 2 Part 2
#Number of observations for each species

setosa<-iris[iris[,5]=="setosa",]
nrow(setosa)

versicolor<-iris[iris[,5]=="versicolor",]
nrow(versicolor)

virginica<-iris[iris[,5]=="virginica",]
nrow(virginica)

#Question 2 Part 3
#Rows with Sepal.Width > 3.5

iris[iris[, 2] >3.5,]

#Question 2 Part 4
#Write data for setosa to comma-delim file 'setosa.csv'

#use dataframe "setosa" from part 2
write.csv(setosa,'~/Desktop/ICB2019_Exercise06/setosa.csv',)

#Question 2 Part 5
#For part 5, select only virginica petal lengths

VPetal<-iris[101:150, 3]

#Mean of virginica Petal.Length

mean(VPetal)

#Min of virginica Petal.Length

min(VPetal)

#Max of of virginica Petal.Length

max(VPetal)
