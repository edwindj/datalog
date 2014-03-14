#' functor for creating a layout function for data.
#'
#'this typically creates
#' @export 
data_layout <- function(level, msg=NULL, ...){
  list(data=list(...), level=level, msg=msg)
}

#data_layout("INFO", a=3)
