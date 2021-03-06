% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/negate.R
\name{negate}
\alias{negate}
\title{Negate a predicate function.}
\usage{
negate(.p)
}
\arguments{
\item{.p}{A single predicate function, a formula describing such a
predicate function, or a logical vector of the same length as \code{.x}.
Alternatively, if the elements of \code{.x} are themselves lists of
objects, a string indicating the name of a logical element in the
inner lists. Only those elements where \code{.p} evaluates to
\code{TRUE} will be modified.}
}
\value{
A new predicate function.
}
\description{
Negate a predicate function.
}
\examples{
negate("x")
negate(is.null)
negate(~ .x > 0)

x <- transpose(list(x = 1:10, y = rbernoulli(10)))
x \%>\% keep("y") \%>\% length()
x \%>\% keep(negate("y")) \%>\% length()
# Same as
x \%>\% discard("y") \%>\% length()
}
