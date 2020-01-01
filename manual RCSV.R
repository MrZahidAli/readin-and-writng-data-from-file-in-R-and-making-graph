# to check our directory location
getwd()

#to set location
setwd("G:/12-8-2019 desktop not rest/R language")

#reading file
data<-read.csv("input.csv")
print(data)

#writing csv fils
write.csv(data ,"input.csv")

#check data is framed or not
print(is.data.frame(data))

#chcek colummn
print(ncol(data))

#check rows
print(nrow(data))

#getting maximum salrey from data frame
sal <- max(data$salary)
print(sal)

#getting minimum salary
sal <- min(data$salary)
print(sal)

#print data of person whose salary is maximum
per <- subset(data , salary == max(salary))
print(per)

#print minimum salary person data
permin <- subset(data, salary == min(salary))
print(permin)

#get data by date  start.sate is column name
retval <- subset(data, as.Date(start.date) < as.Date("30/12/2001"))
print(retval)

#making simple pie chart
x<-c(23,45,99,11,34)
labels2<-c("zahid","Ali","sikander", "waleed", "shahid")
png(file = "piePie.jpg")
pie(x,labels2)
dev.off()


#making colour pie chart
x<-c(23,45,99,11,34)
labels2<-c("zahid","Ali","sikander", "waleed", "shahid")
png(file = "colorPie.jpg")
pie(x,labels2, main = "colourd pie chart", col = (rainbow(x)))
dev.off()

#