


#' get_napoletano
#'
#' Translates Italian to Napoletano
#'
#'
#' @param txt provide a text you want to translate from Iatlian into Napoletano
#' @export
get_napoletano <- function(txt) {

  # txt <- "Come stai"

  html <- rvest::session("http://www.napoletano.info/napoletano.asp")
  hessform <- rvest::html_form(html)[[1]]

  hessform_in <- rvest::html_form_set(hessform, testo = txt)

  resp <- rvest::html_form_submit(hessform_in,)

  trans <- rvest::read_html(resp) %>%
    rvest::html_nodes(".alert") %>%
    rvest::html_text() %>%
    stringr::str_split("\\(questa traduzione ha una affidabilità stimata del ") %>%
    unlist() %>%
    stringr::str_squish() %>%
    stringr::str_remove_all("\\)")

  message(paste0("Questa traduzione ha una affidabilità stimata de ", trans[2]))

  return(trans[1])

}




