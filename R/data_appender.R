#' Data appender
#' 
#' Will store data.frames in logdir
#' @export
data_appender.file <- function(logdir=NULL){
  logdir <- get_logdir()
  
  function(info){
    path <- file.path(logdir, sub("^data\\.?", "", flog.namespace()))
    dir.create(path, recursive=T)
    
    nms <- names(info)
    
    if (is.null(nms)){
      nms <- paste0("data", seq_along(info$data))
    }
    nms <- make.names(nms, unique=T)
    filenames <- paste0(path, "/", nms, "txt")
    
    for (i in seq_along(info$data)){
      x <- info$data[[i]]
      if (is.data.frame(x)){
        write.table(x, filenames[i], append=T)
      }
    }
  }
}