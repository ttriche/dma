survival.init <- function (x, tm, y, type='right', ...) {

	# function to get the initial estimate of coefficients and their variance
	# note: since we are using a Cox PH model, only time1 (tm) is used, not time2

	MyData <- data.frame(x, tm, y)
	MyModel <- coxph(Surv(tm, y) ~ x, data=MyData, ...)
	rm(MyData)	
	return(list(BetaHat=coefficients(MyModel),VarBetaHat=vcov(MyModel)))
}

