regress kids educ
regress cgpa math
display 5 * _b[math]
use rdchem.raw, clear
gen lnrd = ln(rd)
gen lnsales = ln(sales)
regress lnrd lnsales
