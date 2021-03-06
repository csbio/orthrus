% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load.R
\name{normalize_reads}
\alias{normalize_reads}
\title{Log-normalizes reads.}
\usage{
normalize_reads(df, scaling_factor = 1e+06, pseudocount = 1)
}
\arguments{
\item{df}{List of read counts.}

\item{scaling_factor}{Scaling factor (default 1e6).}

\item{pseudocount}{Pseudocount (default 1).}
}
\value{
Log- and depth-normalized read counts.
}
\description{
Log2-normalizes reads with a given pseudocount and scaling factor, and also
depth-normalizes the data.
}
