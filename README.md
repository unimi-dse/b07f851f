# Rmidterm - Physics Grades

This Rpackage analyses the scores of students from the course "Introduction to Physics", by defining the average score registered as well as the median and the mode but also more detailed statistical parameters as standard deviation, skewnees and kurtosis. It provides a plot of score occurrences. Moreover it defines empirical distribution to fit the data. 

## Installation

```R
#install the R package "devtools" 
devtools::install_github('unimi-dse/b07f851f')
```

## Usage

```R
#Load Rmidterm package
require(Rmidterm)
```

#### Grades Plot

Use the following function to plot scores frequencies and grades with different colors

```R
#get plot
gradePlot()
```

#### Grades Analysis

Use the following function to get a report with the average and median score registered as well as the mode

```R
#get basic statistic report
gradesAnalysis()
```

#### Descriptive Statistics

Use the following function to get a more detailed statistic report 

```R
#get detailed statistic report
descriptiveStats()
```

#### Grade Empirical Distribution

Use the following function to get empirical distribution to fit data

```R
#get empirical distribution
gradesEmpDistr()
```

## More functions

This package contains three more exported functions, which can be used to retrieve average, mode and median singularly 

- ```R
  averageScore()
  ```

This function computes the average score



- ```R
  medianScore()
  ```

This function computes the median score



- ```R
  modeScore()
  ```

This function computes the mode score

