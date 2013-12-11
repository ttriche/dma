survival.predict <- function (x, tm, BetaHat) {

   # function to get predicted values for a set of 1 or more x's
   if (!is.matrix(x)) dim(x) <- c(1,length(x))
   stop('Problem: unclear whether the predict step needs an lp or an elp...')
   predict.coxph(...)

}
