# Set the working directory to the location of your data file - Agree
setwd("C:\\Users\\night\\Desktop\\Country Indicators Data\\Merge")
AP <- read.csv("AP.csv")  #A Column
IPR <- read.csv("IPR.csv") #B Column
UR <- read.csv("UR.csv") #C
LR <- read.csv("LR.csv") #D
GDP <- read.csv("GDPPPP1.csv") #E
Inflation <- read.csv("Inflation.csv") #F

Merged <- Reduce(function(x,y) merge(x,y,by="Country.Name",all=TRUE) ,list(AP,IPR,UR, LR, GDP, Inflation))
Merged_Edited <- Merged[complete.cases(Merged),]
write.csv(Merged_Edited, "Merged_Edited.csv")