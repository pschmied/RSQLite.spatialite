RSQLite.spatialite
==================

Package to ease loading the spatialite extension in R.

## Installation
To install this package directly from github, first install and load the devtools package

    install.packages("devtools")
    library(devtools)

Then use the install_github function:

    install_github(repo="RSQLite.spatialite", username="pschmied")

## Usage
Once you have the SQLite.spatialite library loaded, and a db connection object, you can use `init_spatialite` to enable spatialite:

    # Set the sql driver
    sqldrv <- dbDriver("SQLite")
    
    # Create a DB connection
    con <- dbConnect(sqldrv, dbname = "/path/to/db.sqlite")
    
    # Enable spatialite extension
    init_spatialite(con)
    
