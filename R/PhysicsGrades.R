require(ggplot2)
require(readr)

#Data acquisition
#'Import Data
#'
#'This function imports a file from GitHub, which contains physics' grades
#'@param none does not require parameters
#'@return dataframe containing imported data
#'@export
#'@import readr
importData<-function(){
  df<-read.csv('https://raw.githubusercontent.com/bot13956/datasets/master/introduction_to_physics_grades.csv')
  return(df)
}

#Data analysis
#'Average Score
#'
#'This function computes the average score
#'@param df data frame containing grades' data
#'@return average score (float)
#'@export
#'@usage run the importData function to get a dataframe object to use for this function
averageScore<-function(df){
  scores<- df$Score
  averageS<-mean(scores)
  return(averageS)
}

#'Median Score
#'
#'This function computes the median score
#'@param df data frame containing grades' data
#'@return median score (float)
#'@export
#'@usage run the importData function to get a dataframe object to use for this function
medianScore<-function(df){
  scores<- df$Score
  medianS<-median(scores)
  return(medianS)
}

#'Mode Score
#'
#'This function computes the mode
#'@param v vector of numbers
#'@return mode

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

#'Mode Score
#'
#'This function computes the mode score
#'@param df data frame containing grades' data
#'@return mode score (float)
#'@export
#'@usage run the importData function to get a dataframe object to use for this function

modeScore<-function(df){
  scores<- df$Score
  modeS<-getmode(scores)
  return(modeS)
}


#Data Visualization
#'Grade Plot
#'
#'This function plots an histogram showing scores frequencies, divided by grades
#'@param df data frame containing grads' data
#'@return plotted scores
#'@export
#'@import ggplot2
#'@usage run the importData function to get a dataframe object to use for this function
gradePlot<-function(df){
  plotG<-ggplot(df, aes(Score, colour=Grade))+ geom_bar()
  return(plotG)
}

#GradesFunction
#'Grades Analysis
#'
#'This function analyzes physics's grades, and prints a report with average, mode and median
#'@param none does not require parameters
#'@export
gradesAnalysis<-function(){
  df=importData()
  median<-medianScore(df)
  average<-averageScore(df)
  mode<- modeScore(df)
  sprintf("The average score registered is: %f ; The mode registered is: %f ; The median score registered is: %f ", average, mode, median)

}


