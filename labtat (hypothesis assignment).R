#dataset=labtat
#x=discrete , y= continous
#ANOVA test
#normality test
#null hypothesis= laboratory.1,laboratory.2,laboratory.3 and laboratory.4 are normally distributed
#alternate hypothisis=laboratory.1,laboratory.2,laboratory.3 and laboratory.4 are not normally distributed
attach(LabTAT)
shapiro.test(Laboratory.1)
#p value is grater than 0.05(p value=0.5508)
shapiro.test(Laboratory.2)
# p value is grater than 0.05(p value =0.8637)
shapiro.test(Laboratory.3)
# p value is grater than 0.05(p value=0.4205)
shapiro.test(Laboratory.4)
#p value is grater than 0.05(p value = 0.6619)
#(accept null hypothisis annd reject alternate hypoyhisis)
#null hypothisis=laboratory.1,laboratory.2,laboratory.3 and laboratory.4 are normally distributed
# when all the series is normally distributed we will proceed on next step is called bartlett test, when population is 2 then only use variance test but when population is more thnan 2 then we can use bartlett test.
#null hypothisis= variances of labortory.1,labortory.2,laboratory.3 and laboratory.4 is equal.
#alternate hypothesis=variances of labortory.1,labortory.2,laboratory.3 and laboratory.4 is equal.
stack_data <- stack(LabTAT)
attach(stack_data)
bartlett.test(values~ind, data=stack_data)
# p value is grater than 0.05(pvaluue=0.1069)
# so here, null hypothisis accepted and alternate hypothesis is rejected.
#null hypothisis=variances of labortory.1,labortory.2,laboratory.3 and laboratory.4 is equal.
# ANOVA test
#null hypothisis= mean of laboratory.1,laboratory.2,laboratory.3 and laboratory.4 are equal.
#alternate hypothesis= mean of laboratory.1,laboratory.2,laboratory.3 and laboratory.4 are equal.
Anova_result <- aov(values~ind,stack_data)
summary(Anova_result)
#null hypothisis accepted and alternative hypothesis rejected
#null hypothesis=mean of laboratory.1,laboratory.2,laboratory.3 and laboratory.4 are equal.