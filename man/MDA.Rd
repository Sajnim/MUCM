% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MDA.R
\name{MDA}
\alias{MDA}
\title{Maximum Dissimilarilty Algorithm}
\usage{
MDA(data.selected, data.new, n, weight.selected = NULL, weight.new = NULL,
  normalise = TRUE, index = FALSE)
}
\arguments{
\item{data.selected}{a matrix (or data.frame) of events already selected.}

\item{data.new}{a matrix (or data.frame) from which to select new events from.}

\item{n}{the number of additional events to be selected from \code{data.new}.}

\item{weight.selected}{optional argument (vector) used to weight the events already selected
(paired with events in \code{data.selected}, and should have length = \code{nrow(data.selected)}).}

\item{weight.new}{optional argument (vector) used to weight the events to be selected
(paired with events in \code{data.new}, and should have length = \code{nrow(data.new)}).}

\item{normalise}{whether to first normalise the data so each column is scaled between 0 and 1.
Defaults to \code{TRUE} but use \code{FALSE} if already normalised.}

\item{index}{a logical argument. If \code{FALSE} (default), the function returns a matrix (or data.frame) of selected events.
If \code{TRUE} it returns indices of the selected events in \code{data.new}.}
}
\value{
If \code{index = FALSE} the function returns a matrix (or data.frame) of selected events.
        Otherwise it returns the indices of the selected events in \code{data.new} named with row names if available.
}
\description{
Selects a subset of events by maximizing the dissimilarity between selected samples.
              Supports biased selection via event weighting.
              Does not require starting events to have been selected from same population or with same algorithm.
}
\author{
Sajni Malde
}

