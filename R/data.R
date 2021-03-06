#' Raw reads for paralog screen from CHyMErA paper
#'
#' A dataset containing raw read counts from a paralog-targeting library
#' using the CHyMErA system, as described in Gonatopoulos-Pournatzis et al.
#' (2020).
#'
#' @format A data frame with 92,746 rows and 32 variables:
#' \describe{
#'   \item{ID}{guide ID}
#'   \item{Library}{which library the guide belongs to, of "DualTargeting", 
#'                  "DualTargeting_NT", "Paralogs", or "DualTargeting_iCtrl"}
#'   \item{gene1}{gene targeted by Cas9}
#'   \item{gene2}{gene targeted by Cas12a}
#'   \item{Cas9.Target.Site}{genomic region targeted by Cas9}
#'   \item{Cas9.Guide.Source}{"TKOv3" if guide originated in TKOv3 library,
#'                            otherwise "KRB" if made for this library}
#'   \item{Cas9.Guide}{Cas9 guide sequence}
#'   \item{Cas9.Guide.Type}{"exonic" if Cas9 targets an exonic region, 
#'                          "intergenic if it targets an intergenic region,
#'                          "NT" if non-targeting}
#'   \item{Cpf1.Target.Site}{genomic region targeted by Cas12a}
#'   \item{Cpf1.Guide}{Cas9 guide sequence}
#'   \item{Cpf1.Guide.Type}{"exonic" if Cas9 targets an exonic region, 
#'                          "intergenic if it targets an intergenic region,
#'                          "NT" if non-targeting}
#'   \item{CNN.Score}{score for guide quality based on CNN trained as described
#'                    in paper mentioned above}
#'   \item{HAP1.T0}{raw read counts for HAP1 - Torin at T0}
#'   \item{HAP1.T12A}{raw read counts for HAP1 - Torin at T12, technical replicate A}
#'   \item{HAP1.T12B}{raw read counts for HAP1 - Torin at T12, technical replicate B}
#'   \item{HAP1.T12C}{raw read counts for HAP1 - Torin at T12, technical replicate C}
#'   \item{HAP1.T18A}{raw read counts for HAP1 - Torin at T18, technical replicate A}
#'   \item{HAP1.T18B}{raw read counts for HAP1 - Torin at T18, technical replicate B}
#'   \item{HAP1.T18C}{raw read counts for HAP1 - Torin at T18, technical replicate C}
#'   \item{HAP1.Torin.T12A}{raw read counts for HAP1 + Torin at T12, technical replicate A}
#'   \item{HAP1.Torin.T12B}{raw read counts for HAP1 + Torin at T12, technical replicate B}
#'   \item{HAP1.Torin.T12C}{raw read counts for HAP1 + Torin at T12, technical replicate C}
#'   \item{HAP1.Torin.T18A}{raw read counts for HAP1 + Torin at T18, technical replicate A}
#'   \item{HAP1.Torin.T18B}{raw read counts for HAP1 + Torin at T18, technical replicate B}
#'   \item{HAP1.Torin.T18C}{raw read counts for HAP1 + Torin at T18, technical replicate C}
#'   \item{RPE1.T0}{raw read counts for RPE1 at T0}
#'   \item{RPE1.T18A}{raw read counts for RPE1 at T18, technical replicate A}
#'   \item{RPE1.T18B}{raw read counts for RPE1 at T18, technical replicate B}
#'   \item{RPE1.T18C}{raw read counts for RPE1 at T18, technical replicate C}
#'   \item{RPE1.T24A}{raw read counts for RPE1 at T24, technical replicate A}
#'   \item{RPE1.T24B}{raw read counts for RPE1 at T24, technical replicate B}
#'   \item{RPE1.T24C}{raw read counts for RPE1 at T24, technical replicate C}
#' }
#' 
#' @source \url{https://crispr.ccbr.utoronto.ca/chymera/}
"chymera_paralog"

#' Sample table for chymera_paralog
#' 
#' @docType data
#'
#' @format A dataframe formatted as described in \code{\link{add_screens_from_table}}.
#' \describe{
#'  \item{Screen}{name of screens to score}
#'  \item{Replicates}{associated technical replicates for each screens as columns of 
#'                    chymera_paralog}
#'  \item{NormalizeTo}{name of screen to normalize against}
#' }
#'
#'
#' @examples
#' add_screens_from_table(chymera_sample_table)
"chymera_sample_table"

#' Batch table for chymera_paralog
#' 
#' @docType data
#'
#' @format A dataframe formatted as described in \code{\link{score_combn_batch}}.
#' \describe{
#'  \item{Screen}{name of screen to score}
#'  \item{Control}{name of screen to compare against, or "combn" to score combinatorial guides}
#' }
#'
#'
#' @examples
#' screens <- add_screens_from_table(chymera_sample_table)
#' load_batch_table(chymera_batch_table, screens)
"chymera_batch_table"