* ============================================
* Assignment 3 — Applied Econometrics
* Datasets: fertility, student CGPA, rdchem
* ============================================

* --- Simple OLS: Effect of Education on Fertility ---
* Tests whether education has a ceteris paribus effect on number of children
regress kids educ

* --- OLS: Math Score as Predictor of CGPA ---
regress cgpa math

* --- Predicted effect of a 5-point increase in math score on CGPA ---
display 5 * _b[math]

* --- Log-Log Model: R&D Elasticity w.r.t. Firm Sales ---
use rdchem.raw, clear
gen lnrd = ln(rd)
gen lnsales = ln(sales)
regress lnrd lnsales
