dataset = fantoons
head(Faltoons)
#Data Manipulation
nrow(Faltoons) # 400 rows in the data
attach(Faltoons)
df_falt = as.data.frame(cbind(c(Weekdays,Weekend),rep(c("Weekdays","Weekend"),c(400,400)))) # 1 for Female; and 2 for Male
colnames(df_falt) = c("Gender","Day")
head(df_falt)
df_tab2 = table(df_falt);df_tab2
# Hypothesis Testing:---
# Ho : males versus females walking in to the store doesnot differ based on day of the week.
# Ha : males versus females walking in to the store differ based on day of the week.

# Chisquare test for difference in Attributes, Here one Attribute is Gender (Male and Female) and another Attribute is day (Weekedays,weekends)

chisq.test(df_tab2) # P-value is 0.00008543 < 0.05 , Hence we reject the null hypothesis

# Conclusion:--
# males versus females walking in to the store differ based on day of the week.