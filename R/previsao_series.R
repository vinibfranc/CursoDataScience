AirPassengers
#modo mais simples
mean(AirPassengers)
mean(window(AirPassengers, start=c(1960,1), end=c(1960,2)))
#média móvel (vai se ajustando)
install.packages('forecast')
library(forecast)
media_movel = ma(AirPassengers, order=12)
media_movel

previsao = forecast(media_movel, h=12)
previsao
plot(previsao)

arima = auto.arima(AirPassengers)
arima

previsao2 = forecast(arima, h=12)
previsao2
plot(previsao2)