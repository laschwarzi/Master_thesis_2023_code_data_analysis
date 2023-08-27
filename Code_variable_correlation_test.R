####Correlation matrix 2021 and 2022#############################################################################

rm(list = ls())
library(readxl)

dataset <- read_excel('C:/Users/Laura/Documents/Masterarbeit_2022/Data_graphs/Up_to_date_data/13032023_DAT_202122_altered_for_SigTest.xlsx')

#Load column names
names(dataset)<-c("PATCH-ID","Year", "EW number", "g_EW", "Soil temperature","Soil moisture","TIC","TOC","TC","pH","P","K","Mg","Sand","Silt","Clay")

head(dataset, n=10)
###TEST FOR CORRELATION OF VARIABLES###

#Correlation Plots

#install.packages("ggplot2")
#install.packages("corrplot")

library(ggplot2)
library(corrplot)

CorrData <- dataset[,c(3,5:16)]

head(CorrData, n=10)

#Perform significance test with spearman method
cor.mtest <- function(CorrData, method="spearman") {
  CorrData <- as.matrix(CorrData)
  n <- ncol(CorrData)
  p.mat<- matrix(NA, n, n)
  diag(p.mat) <- 0
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      tmp <- cor.test(CorrData[, i], CorrData[, j], method=method)
      p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
    }
  }
  colnames(p.mat) <- rownames(p.mat) <- colnames(CorrData)
  p.mat
}
# matrix of the p-values of correlation
p.mat <- cor.mtest(CorrData)

#Create matrix
ALL <-cor(CorrData)

corr_all<-corrplot(ALL, type="upper", order="original",
                   method= "square",
                   #method = "circle",
                   col = colorRampPalette(c("darkgray", "white", "darkorange2"))(100),
                   addCoef.col = "black", # Add coefficient of correlation
                   tl.col="black", tl.srt=45, #Text label color and rotation
                   # Combine with significance
                   p.mat = p.mat, sig.level = 0.05, insig = "blank", # wenn die insignifikanten werte weggelassen werden sollen 
                   # hide correlation coefficient on the principal diagonal
                   diag=FALSE,
                   mar= c(0,0,0,0))



####Correlation matrix 2021#############################################################################

rm(list = ls())
library(readxl)

dataset <- read_excel('C:/Users/Laura/Documents/Masterarbeit_2022/Data_graphs/Up_to_date_data/13032023_DAT_2021_altered_for_SigTest.xlsx')

#Load column names
names(dataset)<-c("PATCH-ID","Year", "EW number", "g_EW", "Soil temperature","Soil moisture","TIC","TOC","TC","pH","P","K","Mg","Sand","Silt","Clay")

head(dataset, n=10)
###TEST FOR CORRELATION OF VARIABLES###

#Correlation Plots

#install.packages("ggplot2")
#install.packages("corrplot")

library(ggplot2)
library(corrplot)

CorrData <- dataset[,c(3,5:16)]

head(CorrData, n=10)

#Perform significance test with spearman method
cor.mtest <- function(CorrData, method="spearman") {
  CorrData <- as.matrix(CorrData)
  n <- ncol(CorrData)
  p.mat<- matrix(NA, n, n)
  diag(p.mat) <- 0
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      tmp <- cor.test(CorrData[, i], CorrData[, j], method=method)
      p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
    }
  }
  colnames(p.mat) <- rownames(p.mat) <- colnames(CorrData)
  p.mat
}
# matrix of the p-values of correlation
p.mat <- cor.mtest(CorrData)

#Create matrix
ALL <-cor(CorrData)

corr_all<-corrplot(ALL, type="upper", order="original",
                   method= "square",
                   #method = "circle",
                   col = colorRampPalette(c("darkgray", "white", "darkorange2"))(100),
                   addCoef.col = "black", # Add coefficient of correlation
                   tl.col="black", tl.srt=45, #Text label color and rotation
                   # Combine with significance
                   p.mat = p.mat, sig.level = 0.05, insig = "blank", # wenn die insignifikanten werte weggelassen werden sollen 
                   # hide correlation coefficient on the principal diagonal
                   diag=FALSE,
                   mar= c(0,0,0,0))




####Correlation matrix 2022#############################################################################

rm(list = ls())
library(readxl)

dataset <- read_excel('C:/Users/Laura/Documents/Masterarbeit_2022/Data_graphs/Up_to_date_data/13032023_DAT_2022_altered_for_SigTest.xlsx')

#Load column names
names(dataset)<-c("PATCH-ID","Year", "EW number", "g_EW", "Soil temperature","Soil moisture","TIC","TOC","TC","pH","P","K","Mg","Sand","Silt","Clay")

head(dataset, n=10)
###TEST FOR CORRELATION OF VARIABLES###

#Correlation Plots

#install.packages("ggplot2")
#install.packages("corrplot")

library(ggplot2)
library(corrplot)

CorrData <- dataset[,c(3,5:16)]

head(CorrData, n=10)

#Perform significance test with spearman method
cor.mtest <- function(CorrData, method="spearman") {
  CorrData <- as.matrix(CorrData)
  n <- ncol(CorrData)
  p.mat<- matrix(NA, n, n)
  diag(p.mat) <- 0
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      tmp <- cor.test(CorrData[, i], CorrData[, j], method=method)
      p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
    }
  }
  colnames(p.mat) <- rownames(p.mat) <- colnames(CorrData)
  p.mat
}
# matrix of the p-values of correlation
p.mat <- cor.mtest(CorrData)

#Create matrix
ALL <-cor(CorrData)

corr_all<-corrplot(ALL, type="upper", order="original",
                   method= "square",
                   #method = "circle",
                   col = colorRampPalette(c("darkgray", "white", "darkorange2"))(100),
                   addCoef.col = "black", # Add coefficient of correlation
                   tl.col="black", tl.srt=45, #Text label color and rotation
                   # Combine with significance
                   p.mat = p.mat, sig.level = 0.05, insig = "blank", # wenn die insignifikanten werte weggelassen werden sollen 
                   # hide correlation coefficient on the principal diagonal
                   diag=FALSE,
                   mar= c(0,0,0,0))
