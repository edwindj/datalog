# setting up stuff when loading package

.onLoad <- function(libname, pkgname){
  # setting default layout and appenders
  # message?
  flog.layout(data_layout, "data")
  flog.appender(data_appender.file, "data")
}
