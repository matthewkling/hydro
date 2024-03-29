% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hydro.R
\name{hydro}
\alias{hydro}
\title{Derive annual hydrologic variables}
\usage{
hydro(
  rasters,
  temp_scalar = 1,
  ppt_scalar = 1,
  ncores = 1,
  already_latlong = F,
  annual = T,
  ...
)
}
\arguments{
\item{rasters}{stack of 48 rasters in this order: ppt1-12, tmean1-12,
tmax1-12, tmin1-12}

\item{temp_scalar}{multiplier to convert input temperatures to deg C}

\item{ppt_scalar}{multiplier to convert input precipitation to mm}

\item{ncores}{number of computing cores to use for parallel processing}

\item{already_latlong}{leave as F unless rasters are already in lat-long
projection}

\item{annual}{should annual sums be returned? (default TRUE; if FALSE monthly values for each of the 5 variables will be returned)}

\item{...}{additional arguments to clusterR or writeRaster}
}
\value{
A raster stack with 5 layers: PPT, PET, AET, CWD, RAR
}
\description{
This is the main external function in the package, which uses the Hargreaves
equation to generate a set of 5 annual water balance variables from a 48
monthly temperature and precipitation variables. The function calculates
cumulative annual totals for precipitation (PPT), potential
evapotranspiration (PET), actual evapotranspiration (AET), climatic water
deficit (CWD), and reacharge and runoff (RAR), all in mm. Note that it does
not work inside the arctic and antarctic circles.
}
\references{
Wang et al 2012 -- ClimateWNA -- Journal of Applied Meteorology
  and Climatology. Shuttleworth 1993 -- Evaporation (chapter 4 in Handbook of
  Hydrology). Hargreaves and Samani 1985 -- Reference Crop Evaporation from
  Ambient Air Temperature
}
