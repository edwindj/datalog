require(futile.logger)

datalog.info <- function(msg, ..., name=flog.namespace(), prepend="data"){
  if (!missing(msg)){
    # write the msg with the "normal" loggers"
    eval(flog.info(msg=msg, name=name), envir=parent.frame())
  }
  
  # create the namespace for data stuff
  data_namespace <- paste("data", name, sep=".")
  eval(flog.info(msg, ..., name=data_namespace), envir=parent.frame())
}


# testing 1,2,3

datalog.info("testing", a=2)
