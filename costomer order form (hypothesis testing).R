## costomer orderForm data set
# x=descrete and y= descrete
# null hypothesis = detective % are equal across center.
# alternate hypothesis = detective % are not equal across center.
################## chi-square test #############
View(CostomerOrderForm)
attach(CostomerOrderForm)
stacked_data <-  stack(CostomerOrderForm)
View(stacked_data)
attach(stacked_data)
table1 <- table(values,ind)
View(table1)
chisq.test(ind,values)
# pvalue = 0.2771 is grater than 0.05 
#so, here null hypothesis accept and alternative hypothesis reject.
#null hypohesis= detective % are equal across center.
