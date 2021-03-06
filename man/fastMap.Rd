% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fastMap.R
\name{fastMap}
\alias{fastMap}
\title{Map an ID to its associated HGNC gene symbol.}
\usage{
fastMap(ID, hashTable, type = "UniProt")
}
\arguments{
\item{ID}{An unmapped ID.}

\item{hashTable}{The hash table to perform lookups on.}

\item{type}{The type of the unmapped ID.}
}
\value{
The mapped HGNC symbol or \code{ID} if not found.
}
\description{
\code{fastMap} accesses the associated hash table
(\code{fastMapUniProt} for UniProt IDs or
\code{fastMapUniENSP} for Ensembl protein IDs) and returns the
associated HGNC gene symbol. Unmapped IDs will be returned as is and
will be stored in an global option \code{rete.unmapped}.
}
\examples{
\dontrun{
fastmap("ENSG00000121410", fastMapENSP, type = "ENSP")
fastmap(c("Q9NQ94", "P01023"), fastMapUniProt)
}
}
\seealso{
Other fastMap functions: \code{\link{fastMapGenerate}},
  \code{\link{fastMapSanity}}, \code{\link{fastMapUpdate}}
}
