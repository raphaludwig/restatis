% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_find.R
\name{gen_find}
\alias{gen_find}
\title{General Search for Objects Through A Database}
\usage{
gen_find(
  term = NULL,
  database = c("all", "genesis", "zensus", "regio"),
  category = c("all", "tables", "statistics", "variables", "cubes"),
  detailed = FALSE,
  ordering = TRUE,
  pagelength = 500,
  error.ignore = TRUE,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{term}{A character string with no maximum character length, but a word limit of five words.}

\item{database}{Character string. Indicator if the GENESIS ('genesis'), Zensus 2022 ('zensus') or regionalstatistik.de ('regio') database is called. Default option is 'all'.}

\item{category}{Character string. Specify specific GENESIS/regionalstatistik.de object types ('tables', 'statistics' and 'cubes') and specific Zensus 2022 object types ('tables' and 'statistics'). All types that are specific for one database can be used together. Default option is to use all types that are possible for the specific database.}

\item{detailed}{Boolean. Indicator if the function should return the detailed output of the iteration including all object-related information or only a shortened output including only code and object title. Default option is 'FALSE'.}

\item{ordering}{A logical. Indicator if the function should return the output of the iteration ordered first based on the fact if the searched term is appearing in the title of the object and secondly on an estimator of the number of variables in this object. Default option is 'TRUE'.}

\item{pagelength}{Integer. Maximum length of results or objects (e.g., number of tables). Defaults to 500. Maximum of the databases is 25,000 objects.}

\item{error.ignore}{Boolean. Indicator if the function should stop if an error occurs or no object for the request is found or if it should produce a token as response. Default option is 'TRUE'. Important note: This does not apply to errors generated by the API call itself (especially server or client errors with status codes 5xx or 4xx). In this case, the function call will error even if error.ignore is set to TRUE.}

\item{verbose}{Boolean. Indicator if the output of the function should include detailed messages and warnings. Default option is 'TRUE'. Set the parameter to 'FALSE' to suppress additional messages and warnings.}

\item{...}{Additional parameters for the API call. These parameters are only affecting the call itself, no further processing. For more details see \code{vignette("additional_parameter")}.}
}
\value{
A list with all recalled elements from the API. Based on the 'detailed' parameter it contains more or less information, but always includes the code of the object, the title, and the type of the object. This is done to facilitate further processing with the data. Attributes are added to the data.frame describing the search configuration for the returned output.
}
\description{
Function to search through the databases GENESIS, Zensus 2022 and regionalstatistik.de. It is similar in usage as the search function on the GENESIS main page (https://www-genesis.destatis.de/genesis/online).
In the search query, "UND" (German word for 'and', also written "und" or "&") as well as "ODER" (German word for 'or', also written "oder" or "|") can be included and logically combined. Furthermore, wildcards are possible by including "*". If more then one word is included in the term string, 'and' is used automatically to combine the different words.
Important note: Time-series are treated as cubes in GENESIS and regionalstatistik.de, they are not longer distinguished. If you want to find a specific object with a clear code with this find function, you need to specify the object type or search for all object types.
}
\examples{
\dontrun{
# Find objects related to "bus" in GENESIS
object <- gen_find(term = "bus")

# Find tables related to "bus" in GENESIS and return a unordered detailed output
object <- gen_find(term = "bus", detailed = TRUE, ordering = FALSE)

# Find tables related to "Autos" or "Corona" in GENESIS and return a unordered detailed output
object <- gen_find(term = "autos ODER corona", detailed = TRUE, ordering = FALSE)

#' # Find tables related to "Autos" and "Corona" in GENESIS and return a unordered detailed output
object <- gen_find(term = "autos UND corona", detailed = TRUE, ordering = FALSE)
}

}
