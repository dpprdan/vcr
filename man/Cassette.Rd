% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cassette_class.R
\name{Cassette}
\alias{Cassette}
\title{Cassette handler}
\value{
An R6 \code{Cassette} pbject.
}
\description{
Main R6 class that is called from the main user facing
function \code{\link[=use_cassette]{use_cassette()}}
}
\seealso{
\code{\link[=vcr_configure]{vcr_configure()}}, \code{\link[=use_cassette]{use_cassette()}}, \code{\link[=insert_cassette]{insert_cassette()}}
}
\keyword{internal}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{(character) cassette name}

\item{\code{record}}{(character) record mode}

\item{\code{serialize_with}}{(character) serializer (yaml|json|qs2)}

\item{\code{serializer}}{(Serializer) serializer (YAML|JSON|QS2)}

\item{\code{match_requests_on}}{(character) matchers to use}

\item{\code{re_record_interval}}{(numeric) the re-record interval}

\item{\code{root_dir}}{root dir, gathered from \code{\link[=vcr_configuration]{vcr_configuration()}}}

\item{\code{preserve_exact_body_bytes}}{(logical) Whether to base64 encode the
bytes of the requests and responses}

\item{\code{http_interactions}}{(list) internal use}

\item{\code{new_interactions}}{(boolean) Have any interactions been recorded?}

\item{\code{warn_on_empty}}{(logical) warn if no interactions recorded}

\item{\code{new_cassette}}{is this a new cassette?}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Cassette-new}{\code{Cassette$new()}}
\item \href{#method-Cassette-insert}{\code{Cassette$insert()}}
\item \href{#method-Cassette-eject}{\code{Cassette$eject()}}
\item \href{#method-Cassette-print}{\code{Cassette$print()}}
\item \href{#method-Cassette-file}{\code{Cassette$file()}}
\item \href{#method-Cassette-recording}{\code{Cassette$recording()}}
\item \href{#method-Cassette-replaying}{\code{Cassette$replaying()}}
\item \href{#method-Cassette-remove_outdated_interactions}{\code{Cassette$remove_outdated_interactions()}}
\item \href{#method-Cassette-record_http_interaction}{\code{Cassette$record_http_interaction()}}
\item \href{#method-Cassette-clone}{\code{Cassette$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-new"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-new}{}}}
\subsection{Method \code{new()}}{
Create a new \code{Cassette} object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$new(
  name,
  dir = NULL,
  record = NULL,
  match_requests_on = NULL,
  serialize_with = NULL,
  preserve_exact_body_bytes = NULL,
  re_record_interval = NULL,
  warn_on_empty = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{The name of the cassette. vcr will sanitize this to ensure it
is a valid file name.}

\item{\code{dir}}{The directory where the cassette will be stored.}

\item{\code{record}}{The record mode. Default: "once".}

\item{\code{match_requests_on}}{HTTP request components to use when matching.}

\item{\code{serialize_with}}{(character) Which serializer to use.
Valid values are "yaml" (default), "json", and "qs2".}

\item{\code{preserve_exact_body_bytes}}{(logical) Whether or not
to base64 encode the bytes of the requests and responses for
this cassette when serializing it. See also \code{preserve_exact_body_bytes}
in \code{\link[=vcr_configure]{vcr_configure()}}. Default: \code{FALSE}}

\item{\code{re_record_interval}}{(numeric) When given, the cassette will be
re-recorded at the given interval, in seconds.}

\item{\code{warn_on_empty}}{Warn when ejecting the cassette if no interactions
have been recorded.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new \code{Cassette} object
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-insert"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-insert}{}}}
\subsection{Method \code{insert()}}{
insert the cassette
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$insert()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
self
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-eject"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-eject}{}}}
\subsection{Method \code{eject()}}{
ejects the cassette
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$eject()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
self
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-print"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-print}{}}}
\subsection{Method \code{print()}}{
print method for \code{Cassette} objects
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$print(x, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{x}}{self}

\item{\code{...}}{ignored}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-file"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-file}{}}}
\subsection{Method \code{file()}}{
get the file path for the cassette
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$file()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
character
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-recording"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-recording}{}}}
\subsection{Method \code{recording()}}{
Is the cassette in recording mode?
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$recording()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
logical
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-replaying"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-replaying}{}}}
\subsection{Method \code{replaying()}}{
Is the cassette in replaying mode?
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$replaying()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
logical
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-remove_outdated_interactions"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-remove_outdated_interactions}{}}}
\subsection{Method \code{remove_outdated_interactions()}}{
Remove outdated interactions
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$remove_outdated_interactions()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-record_http_interaction"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-record_http_interaction}{}}}
\subsection{Method \code{record_http_interaction()}}{
record an http interaction (doesn't write to disk)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$record_http_interaction(request, response)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{request}}{A \code{vcr_request}.}

\item{\code{response}}{A \code{vcr_response}.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
an interaction as a list with request and response slots
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Cassette-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Cassette-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Cassette$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
