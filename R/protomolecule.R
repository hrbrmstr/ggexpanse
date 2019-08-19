#' Import Protomolecule font for use in charts
#'
#' Roboto Condensed is a trademark of Google.
#'
#' There is an option `hrbrthemes.loadfonts` which -- if set to `TRUE` -- will
#' call `extrafont::loadfonts()` to register non-core fonts with R PDF & PostScript
#' devices. If you are running under Windows, the package calls the same function
#' to register non-core fonts with the Windows graphics device.
#'
#' @md
#' @note This will take care of ensuring PDF/PostScript usage. The location of the
#'   font directory is displayed after the base import is complete. It is highly
#'   recommended that you install them on your system the same way you would any
#'   other font you wish to use in other programs.
#' @export
import_protomolecule <- function() {

  exp_font_dir <- system.file("fonts", "protomolecule", package="ggexpanse")

  suppressWarnings(suppressMessages(extrafont::font_import(exp_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      exp_font_dir
    )
  )

}
