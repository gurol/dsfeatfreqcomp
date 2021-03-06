% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DsManipulation.R
\name{loadPairwiseDsComparisonOfMeanRanks}
\alias{loadPairwiseDsComparisonOfMeanRanks}
\title{Load pairwise dataset comparison of mean ranks from a spreadheet file}
\usage{
loadPairwiseDsComparisonOfMeanRanks(workbook)
}
\arguments{
\item{workbook}{Excel workbook path}
}
\value{
multi comparison data frame with 'DSi', 'DSj', 'PValue' columns
}
\description{
Load pairwise dataset comparison of mean ranks from a spreadsheet file into a
data frame having the following column structure:
}
\details{
DSi | DSj | PValue

that indicates the pair datasets and the p-value of null hypothesis that the
pairs come from the similar distribution.

These values can be obtained after
running the following matlab commands (positive a variable where its values
are pasted from dataset feature frequencies as specified in
loadDsFeatFreqsFromCsv2 function).

\code{[p_p, tbl_p, stats_p] =
  kruskalwallis(positive,
                {'DSA', 'DS0', 'DS1', 'DS2', 'DS3', 'DS4', 'DS5'})}
\code{c_p=multcompare(stats_p)}

workbook input parameter actually an excel sheet having 'c_p' values the
followup test result for each pair of datasets with the following column
structure without headers in the first row.

DSA | DS0 | -75,06246083 | -17,21276596 | 40,63692892 | 0,975982403
DSA | DS1 | -47,47735445 | 10,37234043  | 68,2220353  | 0,998441473
DSA | DS2 | -51,99863105 | 5,85106383   | 63,70075871 | 0,999943324
DSA | DS3 | -61,78586509 | -3,936170213 | 53,91352466 | 0,99999458
DSA | DS4 | -62,94543956 | -5,095744681 | 52,7539502  | 0,999974927
DSA | DS5 | -62,87097147 | -5,021276596 | 52,82841828 | 0,999977018
DS0 | DS1 | -30,26458849 | 27,58510638  | 85,43480126 | 0,798939376
...

Note that the first two columns are actually stated as index of the datasets
stated in the \code{kruskalwallis} matlab function shown above (DSA: 1, DS0:
2, ...) Thus, these index values should be changed by corresponding dataset
name in the excel workbook.
}
