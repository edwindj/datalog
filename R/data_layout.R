#' functor for creating a layout function for data.
#'
#'this typically creates
#' @export 
data_layout <- function(level, ..., msg=NULL){
  nms1 <- as.character(as.list(substitute(list(...)))[-1])
  data <- list(...)
  nms <- names(data)
  if (is.null(nms)){
    nms <- nms1
  } else {
    nms[nms==""] <- nms1[nms==""]
  }
  names(data) <- nms
  list(data=data, level=level, msg=msg)
}

#data_layout("INFO", a=3)
