% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pin_versions.R
\name{pin_versions}
\alias{pin_versions}
\title{Pin Versions}
\usage{
pin_versions(name, board = NULL, full = FALSE, ...)
}
\arguments{
\item{name}{The exact name of the pin to match when searching.}

\item{board}{The board name used to find the pin.}

\item{full}{Should the full versioned paths be shown? Defaults to \code{FALSE}.}

\item{...}{Additional parameters.}
}
\description{
Retrieve versions available for a given pin.
}
\examples{
# define temporary board with versioning enabled
board <- board_temp(versions = TRUE)

# cache the mtcars dataset
pin(mtcars, name = "mtcars", board = board)

# cache variation of the mtcars dataset
pin(mtcars * 10, name = "mtcars", board = board)

# print the mtcars versions
versions <- pin_versions("mtcars", board = board)
versions

# retrieve the original version
pin_get("mtcars", version = versions$version[[1]], board = board)

# retrieve the variation version
pin_get("mtcars", version = versions$version[[2]], board = board)
}
