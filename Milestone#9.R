> mean(imdb_top_1000$No_of_Votes, na.rm=TRUE)
[1] 273692.9
> t.test(imdb_top_1000$No_of_Votes, mu= 273692.9)

One Sample t-test

data:  imdb_top_1000$No_of_Votes
t = 1.0626e-06, df = 999, p-value = 1
alternative hypothesis: true mean is not equal to 273692.9
95 percent confidence interval:
  253377.9 294007.9
sample estimates:
  mean of x 
273692.9 