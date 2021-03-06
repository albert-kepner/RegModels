## Scratch2.R

## 

library(dplyr)

data(mtcars)

View(mtcars)

fit1 <- lm(mpg ~ am, mtcars)

summary(fit1)
fit1$coefficients

mean(mtcars$mpg[mtcars$am==0])

mtcars %>% select (mpg, am) %>%
  group_by(am) %>% 
  summarize( avg_mpg=mean(mpg))

fit2 <- lm(mpg ~ am+wt, mtcars)

fit3 <- lm(mpg ~ am+wt+hp, mtcars)

fit4 <- lm(mpg ~ am+wt+hp+disp, mtcars)

fit5 <- lm(mpg ~ am+wt+hp+cyl+disp, mtcars)

fit9 <- lm(mpg ~ am+wt+hp+cyl+disp+gear+carb+drat+vs, mtcars)

anova(fit1, fit2, fit3, fit4, fit5, fit9)


