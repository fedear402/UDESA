import excel using "/Users/federicolopez/Downloads/millions.XLS", sheet("Variable code") firstrow clear
import excel using "/Users/federicolopez/Downloads/millions.XLS", sheet("BARROSHO") firstrow clear
destring gamma, replace
* Define local macros for fixed variables and the range of other variables
local fixedVars "X1 X2 X3"
local startVarIndex 4
local endVarIndex 62

* Setup the postfile to store results before the loops start
tempname handle
postfile `handle' str20 varname beta se lowerBound upperBound using "/Users/federicolopez/Downloads/results.dta", replace

* Define the program for running regressions and storing results
capture program drop myregressions
program define myregressions
    * Loop through all combinations
    forval i = `startVarIndex'/`endVarIndex' {
        forval j = `i'/`endVarIndex' {
            forval k = `j'/`endVarIndex' {
                * Construct the regression variable list
                local vars `fixedVars' X`i' X`j' X`k'
                
                * Run the regression
                quietly regress gamma `vars'
                
                * Store the results
                foreach var in X`i' X`j' X`k' {
                    * Get the estimate and standard error for the variable
                    local beta = _b[`var']
                    local se = _se[`var']
                    local lowerBound = `beta' - 2*`se'
                    local upperBound = `beta' + 2*`se'
                    
                    * Append the results to the postfile
                    post `handle' ("`var'") (`beta') (`se') (`lowerBound') (`upperBound')
                }
            }
        }
    }
end

* Run the program to fill the postfile
myregressions

* Close the postfile after all iterations are complete
postclose `handle'

* Use the dataset with the results
use "/Users/federicolopez/Downloads/results.dta", clear
