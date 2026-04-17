# Applied-Econometrics-Wage-Determinants-R-D-Elasticity
Applied econometric analysis using Stata on standard Wooldridge datasets. Covers multivariate OLS, quadratic specifications, log-log elasticity models, and ceteris paribus interpretation.

Analyses
1. Wage Determinants (wage1.dta, wage2.dta)
Multivariate OLS regression examining the effect of education, experience, and tenure on wages.
Key findings:

An additional year of education increases wages by ~0.60 units (significant at 1%)
An additional year of tenure raises wages by ~0.17 units (significant at 1%)
Experience has a positive but diminishing effect — modelled using a quadratic term (exper²)
Overall model: F = 76.87, p < 0.001, R² = 0.306

Quadratic experience model:
Ŵ = −3.96 + 0.595·educ + 0.268·exper − 0.00461·exper²
The negative coefficient on exper² confirms diminishing returns to work experience — wages rise with experience but at a decreasing rate.

2. Log-Log Wage Model (wage2.dta)
Log-log specification to estimate the elasticity of wages with respect to education.
Result: β₁ = 0.825 — a 1% increase in education is associated with a ~0.83% increase in wages, holding other factors constant (t = 9.55, p < 0.001).

3. R&D Expenditure Elasticity (rdchem.dta)
Constant elasticity model estimating how R&D spending scales with firm sales.
Model: log(rd) = β₀ + β₁·log(sales) + u
Result: log(rd) = −4.378 + 1.076·log(sales), n = 32, R² = 0.910
Interpretation: A 1% increase in annual sales is associated with a 1.076% increase in R&D expenditure — suggesting R&D scales slightly faster than proportionally with firm size.

4. Additional Analyses

Participation rate vs. match rate regression (401k.dta)
CEO tenure and salary (ceosal2.dta)
Sleep vs. total work hours (sleep75.dta)
IQ and wage returns (wage2.dta)


Tools & Methods
ToolStata 17MethodsOLS, Multivariate Regression, Log-Log Models, Quadratic SpecificationDatasetsWooldridge Introductory Econometrics (wage1, wage2, rdchem, ceosal2, sleep75)ConceptsCeteris paribus effects, elasticity, diminishing returns, R², F-statistic, p-values

How to Run

Install Stata (or use the free Stata reader)
Download Wooldridge datasets from https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041
Run .do files in order (assignment_1.do → assignment_3.do → assignment_5.do)


File Structure
applied-econometrics/
│
├── Assignment 1.do    # OLS basics, participation rate, CEO tenure, IQ-wage, R&D
├── Assignment 2.do    # Wage regression, quadratic experience, log-log elasticity
├── Assignment 3.do    # Multivariate wage model, significance testing
│
└── README.md
