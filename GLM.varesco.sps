* Encoding: UTF-8.
Substitute "XXX" with the variable name. Variables should be longitudinally disposed.
post-hoc analysis are indicated in the line "emmeans". 
Only the relevant post-hoc should be looked at once checked significant main effects.
The grouping variable were "sex" (male, female) and "group" (young, old, very old).

GENLIN XXX BY SEX GROUP (ORDER=ASCENDING) 
  /MODEL SEX GROUP SEX*GROUP INTERCEPT=YES
 DISTRIBUTION=NORMAL LINK=IDENTITY
  /CRITERIA SCALE=MLE COVB=MODEL PCONVERGE=1E-006(ABSOLUTE) SINGULAR=1E-012 ANALYSISTYPE=3(WALD) 
    CILEVEL=95 CITYPE=WALD LIKELIHOOD=FULL
  /MISSING CLASSMISSING=EXCLUDE
/emmeans tables=SEX compare=SEX padjust=BONFERRONI
/emmeans tables=GROUP compare=GROUP padjust=BONFERRONI
/emmeans tables=GROUP*SEX compare=SEX padjust=BONFERRONI
/emmeans tables=SEX*GROUP compare=GROUP padjust=BONFERRONI
  /PRINT CPS DESCRIPTIVES MODELINFO FIT SUMMARY SOLUTION.
