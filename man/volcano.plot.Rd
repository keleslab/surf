% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/help.R
\name{volcano.plot}
\alias{volcano.plot}
\alias{volcano.plot,drseqResults-method}
\alias{volcano.plot,surf-method}
\title{Volcano plot}
\usage{
volcano.plot(object, ...)

\S4method{volcano.plot}{drseqResults}(
  object,
  lfc.cutoff = c(-1, 1),
  fdr.cutoff = 0.01,
  x.limits = c(-15, 15),
  y.limits = c(0, 50),
  remove.portion.grey = 0,
  remove.portion.color = 0,
  colrs = setNames(surf.colors, surf.events)
)

\S4method{volcano.plot}{surf}(object, ...)
}
\arguments{
\item{object}{a \code{drseqResults} object.}

\item{...}{various parameters.}

\item{lfc.cutoff}{\code{numeric(2)}, the range of log2 fold change that is
consider NOT significant.}

\item{fdr.cutoff}{\code{numeric(1)}, significance level of adjusted p-value.}

\item{x.limits}{\code{numeric(2)}, range of log2 fold change.
Any values beyond this range will be projected onto the boundary.}

\item{y.limits}{\code{numeric(2)}, range of -log10(p.value).
Any values beyond this range will be projected onto the boundary.}

\item{remove.portion.grey}{\code{numeric}, between 0 and 1, the portion of
non-significant points to be randomly remove.
This is only for speeding up plotting.}

\item{remove.portion.color}{\code{numeric}, between 0 and 1, the portion of
significant points to be randomly remove.
This is only for speeding up plotting.}

\item{colrs}{a \code{character} vector, named by ATR event types, whose values
are the corresponding color codes.}
}
\value{
a \code{ggplot} object.
}
\description{
Create a volcano plot for the DrSeq results, stratified by alternative
transcriptional regulation (ATR) event types. A volcano plot is a scatter
plot of tested units, where log2 fold change is in x-axis, and
-log10(p.value) is in y-axis.
}
\details{
By default, ATR type are colored with the \code{Paired} palette.
}
