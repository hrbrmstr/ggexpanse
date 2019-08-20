is_windows <- function() {
  tolower(Sys.info()[["sysname"]]) == "windows"
}

is_linux <- function() {
  tolower(Sys.info()[["sysname"]]) == "linux"
}

is_macos <- function() {
  tolower(Sys.info()[["sysname"]]) == "darwin"
}

wts <- c("Light", "Regular", "Medium", "Bold", "Black")
names(wts) <-  c("light", "regular", "medium", "bold", "black")

#' Helper to get the right font name for varous operating systems
#'
#' Due to the way the font metadata has been crafted, the "PostScript Family Name"
#' may be different on any given operating system. This is a helper to
#' get the right name.
#'
#' @param weight the weight of the font
#' @export
protomolecule <- function(weight = c("light", "regular", "medium", "bold", "black")) {

  weight <- match.arg(tolower(weight[1]), c("light", "regular", "medium", "bold", "black"))

  if (is_linux()) {

    "Protomolecule"

  } else if (is_windows()) {

    sprintf("Protomolecule %s", wts[weight])

  } else if (is_macos()) {

    sprintf("Protomolecule %s", wts[weight])

  }

}


