#' Modify qs::qsave By Saving to Temp First
#'
#' Saving files to the hdd can create errors. Saving to temp first might create
#' less errors
#'
#' @param obj obj to serialize with qs
#' @param file destination
#' @param ... args to qsave
#'
#' @export
qsave1 <- function(obj, file, ...) {
  tmp_fn <- fs::file_temp()
  qs::qsave(obj, tmp_fn, ...)

  message("Generating hash")
  tmp_file_hash <- tools::md5sum(tmp_fn)

  i <- 0
  # While the file doesn't exists or the hash doesn't match
  while (!fs::file_exists(file) | tmp_file_hash != tools::md5sum(file)) {
    i <- i + 1
    message("Copying file to destination")
    file.copy(from = tmp_fn, to = file, overwrite = TRUE)
    if (i >= 2) {
      stop("Failed to copy file")
    }
  }
  fs::file_delete(tmp_fn)
  if (fs::file_exists(tmp_fn)) {
    warning("file deletion failed")
  }
}
