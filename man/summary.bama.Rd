% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bama.R
\name{summary.bama}
\alias{summary.bama}
\title{Summarize objects of type "bama"}
\usage{
\method{summary}{bama}(object, rank = F, ci = c(0.025, 0.975), ...)
}
\arguments{
\item{object}{An object of class "bama".}

\item{rank}{Whether or not to rank the output by posterior inclusion
probability. Default is TRUE.}

\item{ci}{The credible interval to calculate. \code{ci} should be a length 2
numeric vector specifying the upper and lower bounds of the CI. By
default, \code{ci = c(0.025, .975)}.}

\item{...}{Additional optional arguments to \code{summary}}
}
\value{
A data.frame with 4 elements. The beta.m estimates, the estimates'
\emph{credible} interval (which by default is 95\\%), and the posterior
inclusion probability (pip) of each 'beta.m'.
}
\description{
summary.bama summarizes the 'beta.m' estimates from \code{bama} and generates
an overall estimate, credible interval, and posterior inclusion probability.
}
