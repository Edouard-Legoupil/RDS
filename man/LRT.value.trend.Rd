% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LRT.trend.R
\name{LRT.value.trend}
\alias{LRT.value.trend}
\title{Compute a test of trend in prevalences based on a likelihood-ratio statistic}
\usage{
LRT.value.trend(x, sigma)
}
\arguments{
\item{x}{A vector of prevalence estimates in the order (e.g., time).}

\item{sigma}{A vector of standard error estimates corresponding to \code{x}.}
}
\value{
A list with components
\itemize{ \item\code{pvalue.increasing}: The p-value for the test of a monotone increase in population prevalence.
\item\code{pvalue.decreasing}: The p-value for the test of a monotone decrease in population prevalence.
\item\code{L}: The value of the likelihood-ratio statistic.
\item\code{x}: The passed vector of prevalence estimates in the order (e.g., time).
\item\code{sigma} The passed vector of standard error estimates corresponding to \code{x}.
}
}
\description{
This function takes a series of point estimates and their associated standard errors and
computes the p-value for the test of a monotone decrease in the 
population prevalences (in sequence order). 
The p-value for a monotone increase is
also reported.
More formally, let the \eqn{K} population prevalences in sequence order be \eqn{p_1, \ldots, p_K}.
We test the null hypothesis:\cr
\deqn{H_0 : p_1 = \ldots = p_K}
vs
\deqn{H_1 : p_1 \ge p_2 \ldots \ge p_K}
with at least one equality strict. A likelihood ratio statistic for this test has 
been derived (Bartholomew 1959).
The null distribution of the likelihood ratio statistic is very complex 
but can be determined by a simple Monte Carlo process.\cr
We also test the null hypothesis:\cr
\deqn{H_0 : p_1 \ge p_2 \ldots \ge p_K}
vs
\deqn{H_1 : \overline{H_0}}
The null distribution of the likelihood ratio statistic is very complex 
but can be determined by a simple Monte Carlo process.
The function requires the isotone library.
}
\examples{

\dontrun{
x <- c(0.16,0.15,0.3)
sigma <- c(0.04,0.04,0.1)
LRT.value.trend(x,sigma)
}
}
\references{
Bartholomew, D. J. (1959). A test of homogeneity for ordered alternatives. Biometrika 46 36-48.
}
\author{
Mark S. Handcock
}
\keyword{manip}
\keyword{survey}
