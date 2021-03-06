% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load.R
\name{unique_gene_pairs}
\alias{unique_gene_pairs}
\title{Get unique gene pairs}
\usage{
unique_gene_pairs(df)
}
\arguments{
\item{df}{A dataframe where each row corresponds to a single guide construct that targets 
two genes, which contains the columns gene1 and gene2.}
}
\value{
A dataframe with two gene name columns where each row contains one unique gene pair.
}
\description{
This function returns all unique gene pairs from two columns containing gene names in a dataframe.
This is necessary for scoring combinatorial data where each row corresponds to a single guide 
construct that targets two genes. NegControl regions must be listed as "NegControl" values, and guides
which only target one gene must have the non-targeted gene listed as "None".
}
