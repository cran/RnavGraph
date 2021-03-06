\name{ng_set_size<-}
\alias{ng_set_size<-}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Change sizes of data points in an active navGraph session
}
\description{
   Specify new sizes for each point for an active navGraph session.
}
\usage{
ng_set_size(obj, dataName) <- value
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
	A navgraph handler of an active navGraph session.
}
  \item{dataName}{
String of the data name. If not specified and only one data set is beeing used in the navGraph session, it will default to this data. Otherwise, if multiple data sets are being used in a navGraph session, the function will list the name of these data sets and ask you to specify one.
}
  \item{value}{
	Replacement vector or single value specifing the sizes (>0) of points.
  }
}

%\references{%% ~put references to the literature/web site here ~}
\author{
Adrian Waddell and Wayne Oldford
}
%\note{%%  ~~further notes~~}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{navGraph}}, \code{\link{ng_get_size}}, \code{\link{ng_set_color<-}}, \code{\link{ng_get_color}}
}
\examples{
## Define a NG_data object
ng.iris <- ng_data(name = "IrisData", data = iris[,1:4])

## start a navGraph session
nav <- navGraph(ng.iris)

## set point sizes
ng_set_size(nav,'IrisData') <- sample(1:7, replace=TRUE, 150)
}
