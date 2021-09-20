library(tidyverse)
library(gtsummary)

#http://www.danieldsjoberg.com/gtsummary/
#https://www.danieldsjoberg.com/gtsummary/articles/tbl_regression.html

mod1 <- glm(response ~ trt + age + grade, data = trial, family = binomial)

#if linear regression etc dont exponentiate
t1 <- tbl_regression(mod1, exponentiate = TRUE)
t1

#export to word
t1 %>%
  as_gt() %>%
  gt::gtsave(filename = here::here("regresion_table.rtf"))
