## buyer ratio data set
# x=descrete and y= descrete
# null hypothesis= male-female buyers rations similar across region.
# alternate hypothesis = male-female buyers rations not similar across region.
############# chi sqare test ####################
attach(BuyerRatio)
chisq.test(BuyerRatio[ , 2:5])
#here, pvalue is 0.6603 means p value is grater than 0.05 
# so, in buyrratio data set accept null hypothesis and reject alternative hypothesis.
male-female buyers rations similar across region.