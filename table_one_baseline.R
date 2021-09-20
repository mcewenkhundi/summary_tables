library(tidyverse)
library(gtsummary)

#http://www.danieldsjoberg.com/gtsummary/
#https://www.danieldsjoberg.com/gtsummary/articles/tbl_summary.html

# make dataset with a few variables to summarize
trial2 <- trial %>% select(age, grade, response, trt)

# summarize the data with our package
table1 <- tbl_summary(trial2)
table1
