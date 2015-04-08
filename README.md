# ColumnWidthError
Resolving the column width error when both `shiny` and `googleCharts` are loaded

In a `shiny` app, if `googleCharts` is loaded, the `column` function gets masked, resulting in a unused argument error for the column width.  
The way around this is to define a new function called `column2`, associated with the `shiny` version of `column`.
The new `column2` function will not get masked when `googleCharts` is loaded.
Also, the program checks to see if `googleCharts` is loaded, and if so, detaches it before defining `column2`.
This grew out of a stackoverflow question at http://stackoverflow.com/questions/29423602/unused-argument-error-with-offset-in-column-for-shiny
