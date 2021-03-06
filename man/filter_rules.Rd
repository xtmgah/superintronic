% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter.R
\name{filter_rules}
\alias{filter_rules}
\title{Apply filters to exon/intron annotations}
\usage{
filter_rules(.data, ...)
}
\arguments{
\item{.data}{A GRanges object obtained from `prepare_annotation()`}

\item{...}{A set of logical expressions to pass to `plyranges::filter()`. If
no expressions are passed then default filters are applied (see filter)}
}
\value{
a GRanges object
}
\description{
Apply filters to exon/intron annotations
}
\details{
If no expressions are passed to `...` then the following
filters are applied by default:

* Restrict genes to have `gene_type == "protein_coding"`
* Genes should not overlap any other genes `n_olaps == 1L`
* Genes should have at least 2 exons `lengths(simple_exonic) > 1`
}
