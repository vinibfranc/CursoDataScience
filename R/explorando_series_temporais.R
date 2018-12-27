AirPassengers
start(AirPassengers)
end(AirPassengers)
plot(AirPassengers)
plot(aggregate(AirPassengers))
monthplot(AirPassengers)

#analisar somente em 1960
subst = window(AirPassengers, start=c(1960,1), end=c(1960,12))
subst
plot(subst)
