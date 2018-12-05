##' Return Table Creation Code
##'
##' @param newtbl character table name to return
##' @return SQL for table creation
##' @keywords internal
returnTable <- function(newtbl) {

  tableList <- list(
    AccountType =
      "CREATE Table AccountType (
         ID                  TEXT PRIMARY KEY,
         AccountType         TEXT
      );",
    Account =
      "CREATE Table Account (
         ID                  TEXT PRIMARY KEY,
         AccountType_ID      TEXT,
         Date                REAL,
         Value               REAL,
         FOREIGN KEY (AccountType_ID)
           REFERENCES AccountType (ID)
           ON DELETE CASCADE
           ON UPDATE CASCADE);"
  )
  return (tableList[[newtbl]])
}
