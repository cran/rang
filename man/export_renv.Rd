% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/installation.R
\name{export_renv}
\alias{export_renv}
\title{Export The Resolved Result As a renv Lockfile}
\usage{
export_renv(rang, path = ".")
}
\arguments{
\item{rang}{output from \code{\link[=resolve]{resolve()}}}

\item{path}{character, path of the exported renv lockfile}
}
\value{
\code{path}, invisibly
}
\description{
This function exports the results from \code{\link[=resolve]{resolve()}} to a renv lockfile that can be used as an alternative to a docker container.
}
\details{
A renv lockfile is easier to handle than a docker container, but it cannot always reliably reproduce the exact computational environment,especially for very old code.
}
\examples{
\donttest{
if (interactive()) {
    graph <- resolve(pkgs = c("openNLP", "LDAvis", "topicmodels", "quanteda"),
                    snapshot_date = "2020-01-16")
    export_renv(graph, ".")
}
}
}
