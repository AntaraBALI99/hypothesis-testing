#cutlets.mtw
#null hypothesis= mean of unit.A is equal to  unit.B
#alternate hypothis = mean of unit.A is not equal to unit.B
#2 population,
#X=discrete , y = continuous 
#USE 2 SAMPLE T TEST
#1st I have to check unit.A and unit.B are normally distributed or not
#Hypothesis for normally distribution 
#Null hypothesis = Unit.A and Unit.B are normally distributed .
#Alternate hypothesis = Unit.A andUnit.B   are not normally distributed.
attach(Cutlets)
shapiro.test(Unit.A)
# p value is grater than 0.05
shapiro.test(Unit.B)
# p value is grater than = 0.05
# the p value is grater than 0.05 it means null hypothesis accept and alternative hypothesis reject.
# the series unit.a and unit.b are normally distributed.
#null hypothesis = Unit.A and Unit.B are normally distributed 
# vriance test
#Null hypothesis =   variances between Unit.A and Unit.B are equal.
#Alternate hypothesis = variances between Unit.A and Unit.B are unequal.
Code =
  Var.test(Unit.A,Unit.B)
#Alternate hypothesis = variances between Unit.A and Unit.B are unequal.
var.test(Unit.A,Unit.B)
# p value is grater than = 0.05
# here also, null hypothesis accepted and alternative hypothesis rejected.
# null hypothesis = variances between Unit.A and Unit.B are equal.
# 2 sample t test
#null hypothesis=Significance difference   in the diameter of cutlet between 2 units are equal.
# alternate hypothesis= Significance difference   in the diameter of cutlet between 2 units are not equal.
t.test
t.test(Unit.A,Unit.B, alternative = "two.sided", cof.level=0.95, correct=TRUE)
# p value is grater than 0.05
# null hypothesis acceoted and alternative hypothesis rejcted
#nullhypothesis=Significance difference   in the diameter of cutlet between 2 units are equal.