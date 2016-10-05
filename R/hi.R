#' Help start conversations
#' 
#' This function generates some helpful text that can be used to start
#' conversation in all kinds of awkward social situations.
#' 
#' @param who charater(1) The name of the person you wish to start a 
#'     conversation with.
#'     
#' @return character(1) A line of text to be used when starting conversations.
#' 
#' @examples
#' hi("Martin Morgan")
#' 
#' @export
hi <- function(who) {
    paste("hello", shout(who), "you have", nchar(who), "letters in your name!")
}

shout <- function(who) {
    toupper(who)
}