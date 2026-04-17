regress wage educ exper tenure
gen exper2 = exper^2
regress wage educ exper exper2
gen logwage = ln(wage)
gen logeduc = ln(educ)
regress logwage logeduc
