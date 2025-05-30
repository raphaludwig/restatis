% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_var2-val2.R
\name{gen_search_vars}
\alias{gen_search_vars}
\title{gen_search_vars}
\usage{
gen_search_vars(
  code = NULL,
  database = c("all", "genesis", "zensus", "regio"),
  area = c("all", "public", "user"),
  sortcriterion = c("code", "content"),
  pagelength = 500,
  error.ignore = FALSE,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{code}{Character string with a maximum length of 6 characters. Code from a GENESIS, Zensus 2022 or regionalstatistik.de object. Only one code per iteration.}

\item{database}{Character string. Indicator if the GENESIS ('genesis'), Zensus 2022 ('zensus') or regionalstatistik.de ('regio') database is called. Default option is 'all'.}

\item{area}{Character string. Indicator from which area of the database the results are called. In general, 'all' is the appropriate solution. Default option is 'all'. Not used for 'statistics'.}

\item{sortcriterion}{Character string. Indicator if the output should be sorted by 'code' or 'content'. This is a parameter of the API call itself. The default is 'code'.}

\item{pagelength}{Integer. Maximum length of results or objects (e.g., number of tables). Defaults to 500. Maximum of the databases is 25,000 objects.}

\item{error.ignore}{Boolean. Indicator if the function should stop if an error occurs or no object for the request is found or if it should produce a token as response. Default option is 'FALSE'. Important note: This does not apply to errors generated by the API call itself (especially server or client errors with status codes 5xx or 4xx). In this case, the function call will error even if error.ignore is set to TRUE.}

\item{verbose}{Boolean. Indicator if the output of the function should include detailed messages and warnings. Default option is 'TRUE'. Set the parameter to 'FALSE' to suppress additional messages and warnings.}

\item{...}{Additional parameters for the API call. These parameters are only affecting the call itself, no further processing. For more details see \code{vignette("additional_parameter")}.}
}
\value{
A list with all recalled elements from the API. Always includes the code of the object, the title, and the type of the object. This is done to facilitate further processing with the data. Attributes are added to the data.frame describing the search configuration for the returned output.
}
\description{
Function to search for specific variables
}
\examples{
\dontrun{
# Find a specific variable "GES" in Genesis
object <- gen_search_vars("GES")
}

}
