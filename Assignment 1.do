* ============================================
* Assignment 1 — Applied Econometrics
* Wooldridge Datasets: 401k, ceosal2, sleep75, wage2, rdchem
* ============================================

* --- Participation Rate vs Match Rate ---
summarize prate mrate
regress prate mrate
predict yhat
list mrate yhat if mrate==3.5

* --- CEO Tenure and Salary ---
use ceosal2.raw, clear
summarize salary ceoten
count if ceoten == 0
summarize ceoten
gen lnsalary = ln(salary)
regress lnsalary ceoten

* --- Sleep vs Total Work Hours ---
use sleep75.raw, clear
regress sleep totwrk
display 120 * _b[totwrk]

* --- IQ and Wage Returns ---
use wage2.raw, clear
summarize wage IQ
regress wage IQ
display 15 * _b[IQ]
gen lnwage = ln(wage)
regress lnwage IQ
display 100 * (15 * _b[IQ])

* --- R&D Elasticity: Log-Log Model ---
use rdchem.raw, clear
gen lnrd = ln(rd)
gen lnsales = ln(sales)
regress lnrd lnsales
