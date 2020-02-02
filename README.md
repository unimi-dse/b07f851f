# Rmidterm - Physics Grades

This Rpackage analyses the scores of students from the course "Introduction to Physics", by defining the average score registered as well as the median and the mode and by plotting score occurrences. 

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

#### Import Data

Use the following function to import Physics grades' data

```R
#import data
df = importData()
```

#### Grades Plot

Use the following function to plot scores frequencies and grades with different colors

```R
#get plot
gradePlot(df)
```

#### Grades Analysis

Use the following function to get a report with the average and median score registered as well as the mode

```R
#get report
gradesAnalysis()
```

## More functions

This package contains three more exported functions, which can be used to retrieve average, mode and median directly from the data frame

- ```R
  averageScore(df)
  ```

This function computes the average score



- ```R
  medianScore(df)
  ```

This function computes the median score



- ```R
  modeScore(df)
  ```

This function computes the mode score

