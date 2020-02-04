

#Data acquisition
#'Import Data
#'
#'This function imports a file which contains physics' grades
#'@import readr
importData<-function(){
  df<- read.csv('C:/Users/giusy/OneDrive/Documenti/grades.csv', header=T, sep=';')
  save(df, file='data/grades.rda')
}




#Data analysis
#'Average Score
#'
#'This function computes the average score registerd in the course
#' "Introduction to Physics"
#'@return average score (float)
#'@export
averageScore<-function(){
  data("grades")
  scores<- grades$Score
  averageS<-mean(scores)
  return(averageS)
}

#'Median Score
#'
#'This function computes the median score registerd in the
#' course "Introduction to Physics"
#'@return median score (float)
#'@export
medianScore<-function(){
  data("grades")
  scores<- grades$Score
  medianS<-median(scores)
  return(medianS)
}

#'Mode Score
#'
#'This function computes the mode
#'@param v vector of numbers
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

#'Mode Score
#'
#'This function computes the mode score registerd in the
#'course "Introduction to Physics"
#'@return mode score (float)
#'@export
modeScore<-function(){
  data("grades")
  scores<- grades$Score
  modeS<-getmode(scores)
  return(modeS)
}

#'Descriptive Statistics
#'
#'This function provides classical statistics (minimum, maximum,
#'median, mean, standard deviation), including the skewnees and kurtosis.
#'The values are reported on the Cullen and Frey graph
#'@export
#'@import fitdistrplus
descriptiveStats<-function(){
  data("grades")
  descdist(grades$Score, boot=1000)
}



#Data Visualization
#'Grade Plot
#'
#'This function plots an histogram showing scores frequencies, divided by grades
#'highlited in different colors
#'@return plotted scores
#'@export
#'@import ggplot2
gradePlot<-function(){
  load("~/Rmidterm/data/grades.rda")
  plotG<-ggplot(grades, aes(Score, colour=Grade))+ geom_bar()
  return(plotG)
}

#'Grades Empirical Distribution
#'
#'This function plots and characterizes the empirical distribution.
#'The function return two plots, the left-hand plot is by default the histogram on a density scale
#'and the right-hand plot the empirical cumulative distribution function
#'@export
#'@import fitdistrplus
gradesEmpDistr<-function(){
  data("grades")
  plotdist(grades$Score, histo = TRUE, demp=TRUE)
}

#GradesFunction
#'Grades Analysis
#'
#'This function analyzes physics's grades, and provides a report
#' with average, mode and median
#'@export
gradesAnalysis<-function(){
  med<-medianScore()
  ave<-averageScore()
  mod<- modeScore()
  x <- c(ave,med,mod)
  n <- c('average','median','mode')
  names(x) <- n
  return(x)
}




