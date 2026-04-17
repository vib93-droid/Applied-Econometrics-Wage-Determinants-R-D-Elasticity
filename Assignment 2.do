* ============================================
* Assignment 2 — Applied Econometrics
* Dataset: wage1.dta (Wooldridge)
* ============================================

* --- Multivariate OLS: Education, Experience, Tenure ---
regress wage educ exper tenure

* --- Quadratic Experience: Modelling Diminishing Returns ---
gen exper2 = exper^2
regress wage educ exper exper2

* --- Log-Log Model: Elasticity of Wages w.r.t. Education ---
gen logwage = ln(wage)
gen logeduc = ln(educ)
regress logwage logeduc
