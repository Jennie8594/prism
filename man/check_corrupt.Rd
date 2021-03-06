% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_corrupt.R
\name{check_corrupt}
\alias{check_corrupt}
\title{Check the integrity of downloaded PRISM data}
\usage{
check_corrupt(type, minDate = NULL, maxDate = NULL, dates = NULL)
}
\arguments{
\item{type}{The type of data to download, must be "ppt", "tmean", "tmin", or "tmax".
Note that tmean == mean(tmin, tmax).}

\item{minDate}{a valid iso-8601 (e.g. YYYY-MM-DD) date to start downloading data. 
May be provided as either a character or \code{\link[base]{Date}} class.}

\item{maxDate}{a valid iso-8601 (e.g. YYYY-MM-DD) date to end downloading data.
May be provided as either a character or \code{\link[base]{Date}} class.}

\item{dates}{a vector of iso-8601 formatted dates to download data for, can 
also be a single date. May be provided as either a character or 
\code{\link[base]{Date}} class.}
}
\value{
\code{logical} indicating whether the process 
succeeded.
}
\description{
Uses the \code{raster::stack} function
to determine if the bil files are readable. Any that
are not readable are redownloaded.
}
