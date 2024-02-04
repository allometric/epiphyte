#' Retrieve the taxonomic families of a tibble containing genus and species
#' pairings
#'
#' @param scientific_names A character vector containing the scientific names
#'  to search.
get_family <- function(scientific_names) {
  families <- c()

  for(i in seq_along(scientific_names)) {
    backbone <- rgbif::name_backbone(scientific_names[[i]])

    if(backbone$matchType[[1]]  == "NONE") {
      # We did not get a perfect match, return NA and warn
      warning(paste("Could not find family name for", scientific_names[[i]]))
      families <- c(families, NA)
    } else {
      families <- c(families, backbone$family)
    }
  }

  families
}