% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_jobs.R
\name{gen_list_jobs}
\alias{gen_list_jobs}
\title{gen_list_jobs}
\usage{
gen_list_jobs(
  database,
  sortcriterion = c("type", "time", "status", "code"),
  flat = FALSE,
  error.ignore = FALSE,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{database}{Character string. Indicator if GENESIS or regionalstatistik.de database is called. Accepts only one database ('regio' or 'genesis').}

\item{sortcriterion}{Character string. Indicator if the output should be sorted by 'type','time','status' or 'code'. This is a parameter of the API call itself. The default is 'type'.}

\item{flat}{Boolean. Should the function return a list with jobs and metadata ('FALSE') or just a flat data.frame ('TRUE')? Defaults to FALSE.}

\item{error.ignore}{Boolean. Indicator if the function should stop if an error occurs or no object for the request is found or if it should produce a token as response. Default option is 'FALSE'. Important note: This does not apply to errors generated by the API call itself (especially server or client errors with status codes 5xx or 4xx). In this case, the function call will error even if error.ignore is set to TRUE.}

\item{verbose}{Boolean. Indicator if the output of the function should include detailed messages and warnings. Default option is 'TRUE'. Set the parameter to 'FALSE' to suppress additional messages and warnings.}

\item{...}{Additional parameters for the API call. These parameters are only affecting the call itself, no further processing. For more details see \code{vignette("additional_parameter")}.}
}
\value{
A list or data.frame (see parameter 'flat') of all current jobs of the user.
}
\description{
Function to list all current jobs connected to the given user in the GENESIS or regionalstatistik.de database. Important note: For this function it is also possible to use \code{searchcriterion} parameter and \code{selection} parameter, making it possible to filter the job list based on 'type','time','status' or 'code'. For more details see \code{vignette("additional_parameter")}.
}
\details{
Important information concerning the caching of results: This function's results are \emph{never} cached because there is no use-case for a cached list of jobs (users would always want a refreshed list of jobs and their respective status).
}
\examples{
\dontrun{
gen_list_jobs("regio", flat = TRUE)
}

}
