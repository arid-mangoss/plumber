% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pr.R
\name{pr_mount}
\alias{pr_mount}
\title{Mount a Plumber router}
\usage{
pr_mount(pr, path, router)
}
\arguments{
\item{pr}{The host Plumber router.}

\item{path}{A character string. Where to mount router.}

\item{router}{A Plumber router. Router to be mounted.}
}
\value{
A Plumber router with the supplied router mounted
}
\description{
Plumber routers can be “nested” by mounting one into another
using the \code{mount()} method. This allows you to compartmentalize your API
by paths which is a great technique for decomposing large APIs into smaller
files. This function mutates the Plumber router (\code{\link[=pr]{pr()}}) in place and
returns the updated router.
}
\examples{
\dontrun{
pr1 <- pr() \%>\%
  pr_get("/hello", function() "Hello")

pr() \%>\%
  pr_get("/goodbye", function() "Goodbye") \%>\%
  pr_mount("/hi", pr1) \%>\%
  pr_run()
}

}
