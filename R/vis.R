#' Koh's default theme specs for {ggplot2}, inspired by functions in {silgelib}
#'
#' @param base_size base font size
#' @param strip_text_size,strip_text_margin plot strip text size and margin
#' @param subtitle_size,subtitle_margin plot subtitle size and margin
#' @param plot_title_size,plot_title_margin plot title size and margin
#' @param legend_position legend position
#' @param plot_caption_color color of caption
#' @param ... Other arguments passed to \code{theme_minimal}
#'
#' @details The Oswald font needs to be installed locally or via sysfonts::font_add_google()
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' theme_set(theme_ak())
#'
#'}
#'
#' @export
theme_ak <- function(base_size = 11,
                         strip_text_size = 12,
                         strip_text_margin = 5,
                         subtitle_size = 13,
                         subtitle_margin = 10,
                         plot_title_size = 16,
                         plot_title_margin = 10,
                         legend_position = "bottom",
                         plot_caption_color = "gray40",
                         ...) {
  plt <- ggplot2::theme_minimal(base_family = "Oswlad",
                                base_size = base_size, ...)
  plt$strip.text <- ggplot2::element_text(
    hjust = 0, size = strip_text_size,
    margin = ggplot2::margin(b = strip_text_margin),
    family = "Oswald"
  )
  plt$plot.subtitle <- ggplot2::element_text(
    hjust = 0, size = subtitle_size,
    margin = ggplot2::margin(b = subtitle_margin),
    family = "Oswald"
  )
  plt$plot.title <- ggplot2::element_text(
    hjust = 0, size = plot_title_size,
    margin = ggplot2::margin(b = plot_title_margin),
    family = "Oswald"
  )
  plt$legend.position = legend_position
  plt$
  plt
}
