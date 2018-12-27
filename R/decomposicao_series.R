plot(AirPassengers)
#elemento de tendência, elemento de sazonalidade e elemento de aleatoriedade
dec = decompose(AirPassengers)
dec
plot(dec$seasonal)
plot(dec$trend)
plot(dec$random)
plot(dec)
