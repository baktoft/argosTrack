% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Movement_OUL.R
\docType{class}
\name{OUL-class}
\alias{OUL-class}
\alias{OUL}
\title{A Reference Class for fitting an Ornstein-Uhlenbeck Location model.}
\description{
The reference class implements an Ornstein-Uhlenbeck Location (Blackwell 2016). The locations follow an Ornstein-Uhlenbeck process
\deqn{X_t - \gamma = e^{B\Delta_t}[X_{t-\Delta_t} - \gamma] + \eta_{t}}
where \eqn{\eta_t} is a bivariate normal with zero mean and covariance \eqn{\pmatrx{\sigma_1^2 & 0 \cr 0 & \sigma_2^2}}.
}
\section{Methods}{

\describe{
\item{\code{getTMBmap(...)}}{Function to return a map list for TMB::MakeADFun.}

\item{\code{initialize(dates, pars = c(1, 0, 0, 1, 0, 0), varPars = numeric(2),
  nauticalStates = FALSE, timeunit = "hours")}}{Method to initialize the class. 'dates' is a vector of distinct and increasing POSIXct dates; 'pars' is vector of the movement parameters: \eqn{B_{1,1}}, \eqn{B_{2,1}}, \eqn{B_{1,2}}, \eqn{B_{2,2}}, \eqn{\gamma_{lat}}, \eqn{\gamma_{lon}}; 'varPars' is a vector of movement variance parameters: \eqn{log(\sigma_{lat})}, \eqn{log(\sigma_{lat})}; 'nauticalStates' is a logical value indicating whether the states should be modelled in nautical miles, and 'timeunit' is the time unit to use for calculating time steps.}

\item{\code{simulate(x0 = c(0, 0))}}{Function to simulate from the movement model. The initial states (latitudinal/y-coordinate location and longitudinal/x-coordinate location) must be given. If nauticalStates==TRUE, the result is returned in nautical miles.}
}}

\examples{
d <- subadult_ringed_seal
mov <- argosTrack:::OUL(unique(as.POSIXct(d$date,tz="GMT")))

}
\references{
Blackwell, P. G., Niu, M., Lambert, M. S. and LaPoint, S. D. (2016), Exact Bayesian inference for animal movement in continuous time. Methods Ecol Evol, 7: 184-195. doi:10.1111/2041-210X.12460
}
\seealso{
\code{\link{Movement}}. A generalization of \code{\link{DCRW}}, \code{\link{RW}}, and \code{\link{CTCRW}} (except only the location is modelled here)

Other "Movement models": \code{\link{CSB-class}},
  \code{\link{CTCRW-class}}, \code{\link{DCRW-class}},
  \code{\link{DIRAC-class}}, \code{\link{DSBHN-class}},
  \code{\link{DSBW-class}}, \code{\link{IDCRW-class}},
  \code{\link{MPCTCRW-class}},
  \code{\link{Movement-class}}, \code{\link{OUV-class}},
  \code{\link{RW-class}}
}
\keyword{internal}
