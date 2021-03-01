data(mtcars)

fitA <- lm(mpg ~ wt, mtcars)
fitB <- lm(mpg ~ wt+hp, mtcars)
fitC <- lm(mpg ~ wt+hp+am, mtcars)

f_cyl <- lm(mpg ~ wt+hp+cyl, mtcars)
f_disp <- lm(mpg ~ wt+hp+disp, mtcars)
f_drat <- lm(mpg ~ wt+hp+drat, mtcars)
f_qsec <- lm(mpg ~ wt+hp+qsec, mtcars)
f_vs <- lm(mpg ~ wt+hp+vs, mtcars)
f_gear <- lm(mpg ~ wt+hp+gear, mtcars)
f_carb <- lm(mpg ~ wt+hp+carb, mtcars)

anova(fitA, fitB, fitC)

confint(fitA)
confint(fitB)
confint(fitC)

anova(fitB, f_cyl)

anova(fitB, f_disp)

anova(fitB, f_drat)

anova(fitB, f_qsec)

anova(fitB, f_vs)

anova(fitB, f_gear)

anova(fitB, f_carb)

confint(fitB)
confint(f_cyl)
confint(f_disp)
confint(f_drat)
confint(f_qsec)
confint(f_vs)
confint(f_gear)
confint(f_carb)



