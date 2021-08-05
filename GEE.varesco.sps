* Encoding: UTF-8.
substitute "XXX" with the variable. Data should be in longitudinal form.
when a main effect is observed, substitute the effect observed to "AAA" or "BBB" to perform a post-hoc analysis.

genlin XXX by GROUP TIME SEX
/model GROUP TIME GROUP*TIME GROUP*SEX TIME*SEX SEX*GROUP*TIME
distribution=normal link=identity
/emmeans tables=AAA*BBB compare=AAA padjust=BONFERRONI
/repeated  SUBJECT=ID corrtype=ar(1).
