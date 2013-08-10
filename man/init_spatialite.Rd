\name{init_spatialite}
\alias{init_spatialite}

\title{
Initialize spatialite extensions on a SQLite DB connection
}
\description{
This function loads spatialite functions to make them available to an
RSQLite database connection.  The databse connection needs to have been
created by passing \code{loadable.extensions = TRUE} to \code{dbConnect}
(this is the default as of RSQLite 0.9-1).
}
\usage{
init_spatialite(db)
}

\arguments{
  \item{db}{
    An RSQLite database connection as returned by \code{dbConnect}.
}
}
\value{
  TRUE if the spatialite extensions were successfully loaded.
}
\references{
 For details on loadable extensions in SQLite, see
 \url{http://www.sqlite.org/cvstrac/wiki?p=LoadableExtensions}.
 
 The spatialite functions included in this package were written by
 Alessandro Furieri and made available from
 (\url{https://www.gaia-gis.it/fossil/libspatialite/index}).
}
\author{
Peter Schmiedeskamp
}

\seealso{
  The package manual page has a complete list of the extension
  functions: \code{\link{RSQLite.sqlite}}
}
\examples{
db <- dbConnect(SQLite(), dbname = ":memory:",
                loadable.extensions = TRUE)

init_spatialite(db)

data(USArrests)
dbWriteTable(db, "t1", USArrests)
dbGetQuery(db, "select variance(Murder) from t1")[[1]]
}
