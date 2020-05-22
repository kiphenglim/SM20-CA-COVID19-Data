## READ CSV DATA FILES
stateData = read.csv(file = "latimes-state-totals.csv")
countyData = read.csv(file = "latimes-county-totals.csv")
placeData = read.csv(file = "latimes-place-totals.csv")


## SUBSET AREAS OF INTEREST - LA, PASADENA, ARCADIA, SAN GABRIEL, CLAREMONT
laCounty <- subset(countyData, countyData$county == "Los Angeles")
laReportPeriod <- as.Date(laCounty$date)

arcadia <- subset(placeData, placeData$county == "Los Angeles" & placeData$place == "Arcadia")
arcadiaReportPeriod <- as.Date(arcadia$date)

claremont <- subset(placeData, placeData$county == "Los Angeles" & placeData$place == "Claremont")
claremontReportPeriod <- as.Date(claremont$date)

palmDesert <- subset(placeData, placeData$county == "Riverside" & placeData$place == "Palm Desert")
palmSprings <- subset(placeData, placeData$county == "Riverside" & placeData$place == "Palm Springs")
palmDesertReportPeriod <- as.Date(palmDesert$date)
palmSpringsReportPeriod <- as.Date(palmSprings$date)

pasadena <- subset(placeData, placeData$county == "Los Angeles" & placeData$place == "Pasadena")
pasadenaReportPeriod <- as.Date(pasadena$date)

sanGabriel <- subset(placeData, placeData$county == "Los Angeles" & placeData$place == "San Gabriel")
sgReportPeriod <- as.Date(sanGabriel$date)


## PLOT TOTAL CONFIRMED CASES FOR AREAS OF INTEREST
plot(x = laReportPeriod,
     y = laCounty$confirmed_cases,
     main = paste("Total Confirmed Cases in LA County from", min(laReportPeriod), "to", max(laReportPeriod)),
     xlab = "Time",
     ylab = "LA County Confirmed Cases",
     type = "l")

plot(x = arcadiaReportPeriod,
     y = arcadia$confirmed_cases,
     main = paste("Total Confirmed Cases in City of Arcadia from", min(arcadiaReportPeriod), "to", max(arcadiaReportPeriod)),
     xlab = "Time",
     ylab = "City of Arcadia Confirmed Cases",
     type = "l")

plot(x = claremontReportPeriod,
     y = claremont$confirmed_cases,
     main = paste("Total Confirmed Cases in City of Claremont from", min(claremontReportPeriod), "to", max(claremontReportPeriod)),
     xlab = "Time",
     ylab = "City of Claremont Confirmed Cases",
     type = "l")

plot(x = palmSpringsReportPeriod,
     y = palmDesert$confirmed_cases + palmSprings$confirmed_cases,
     main = paste("Total Confirmed Cases in Cities of Palm Desert & Palm Springs from", min(palmDesertReportPeriod), "to", max(palmDesertReportPeriod)),
     xlab = "Time",
     ylab = "Cities of Palm Desert & Palm Springs Confirmed Cases",
     type = "l")

plot(x = pasadenaReportPeriod,
     y = pasadena$confirmed_cases,
     main = paste("Total Confirmed Cases in City of Pasadena from", min(pasadenaReportPeriod), "to", max(pasadenaReportPeriod)),
     xlab = "Time",
     ylab = "City of Pasadena Confirmed Cases",
     type = "l")

plot(x = sgReportPeriod,
     y = sanGabriel$confirmed_cases,
     main = paste("Total Confirmed Cases in City of San Gabriel from", min(sgReportPeriod), "to", max(sgReportPeriod)),
     xlab = "Time",
     ylab = "City of San Gabriel Confirmed Cases",
     type = "l")
