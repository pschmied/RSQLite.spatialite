\name{RSQLite.spatialite-package}
\alias{RSQLite.spatialite-package}
\alias{RSQLite.spatialite}
\docType{package}
\title{
Spatialite Extensions for RSQLite
}
\description{
  
This package uses SQLite's loadable extension feature to provide
geospatial datatypes and functions via the spatialite library.  The package is a
wrapper of libspatialite available from
http://www.gaia-gis.it/gaia-sins/. This package is based on the
RSQLite.extfuns package by Seth Falcon

}
\section{Available extension functions}{
  You can enable the spatialite extensions by calling the
  \code{init_spatialite} function on an RSQLite database connection
  object.

  See \url{http://www.gaia-gis.it/gaia-sins/spatialite-sql-3.0.0.html} for a full list of functions.
}

\author{
Peter Schmiedeskamp <peter@thoughtspot.net>

Maintainer: Peter Schmiedeskamp <peter@thoughtspot.net>
}
\references{
See \url{https://www.gaia-gis.it/fossil/libspatialite/index} for the
original source of libspatialite by Alessandro Furieri.
}

\keyword{ package }

\examples{
## basic usage looks like this
db <- dbConnect(SQLite(), dbname = ":memory:")
init_spatialite(db)

## now you can use any of the extension functions listed above in
## SQL queries.
dbDisconnect(db)
}
