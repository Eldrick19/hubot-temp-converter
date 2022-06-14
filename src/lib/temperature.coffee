# Temperature converter class

class Temperature
  constructor: (@tempValue) ->

  celsiusToFahrenheit: ->
    @tempValue = (@tempValue * (9/5)) + 32

  celsiusToKelvin: ->
    @tempValue += 273.15
  
  celsiusToRankine: ->
    @tempValue = this.celsiusToKelvin() * (9/5)

  celsiusToDelisle: ->
    @tempValue = (100 - @tempValue) * (3/2)

  celsuisToNewton: ->
    @tempValue *= (33/100)

  celsiusToReaumur: ->
    @tempValue *= (4/5)

  celsiusToRomer: ->
    @tempValue = @tempValue * (21/40) + 7.5

  fahrenheitToCelsius: ->
    @tempValue = (@tempValue - 32) * (5/9)

  kelvinToCelsius: ->
    @tempValue -= 273.15

  rankineToCelsius: ->
    @tempValue = (@tempValue - 491.67) * (5/9)

  delisleToCelsius: ->
    @tempValue = (100 - @tempValue) * (2/3)

  newtonToCelsius: ->
    @tempValue *= (100/33)

  reaumurToCelsius: ->
    @tempValue *= (5/4)
  
  romerToCelsius: ->
    @tempValue = (@tempValue - 7.5) * (40/21)

module.exports = Temperature