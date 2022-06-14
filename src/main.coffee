# Converts Temperature to different Temperature scales when prompted
# Run hubot locally using the hubot yeoman generator. Instructions here: https://hubot.github.com/docs/
# Run locally using:
# yo hubot --owner="Eldrick Wega <eldrick.wega@gmail.com>" --name="myhubot" --description="Converts Temperature from Celsius to Farenheit and vis versa when prompted" --adapter=campfire --defaults

Temperature = require 'lib/temperature'

module.exports = (robot) ->

    robot.respond /convert temp (.*) (.*) to (.*)/i, (res) ->
      tempValue = parseFloat(res.match[1].match(/^\-?\d*\.?\d+$/))
      convertFrom = res.match[2]
      convertTo = res.match[3]
      
      temp = new Temperature(tempValue)

      if Number.isNaN(tempValue) # Temperature Value will be 'NaN' if value entered in an unexpected format
        res.send "Make sure the temperature you're converting looks like '100', '-0.5', or '3.145'"
        return


      if convertFrom == 'C' # Do nothing
      else if convertFrom == 'F'
        temp.fahrenheitToCelsius()
      else if convertFrom == 'K'
        temp.kelvinToCelsius()
      else if convertFrom == 'R'
        temp.rankineToCelsius()
      else if convertFrom == 'D'
        temp.delisleToCelsius()
      else if convertFrom == 'N'
        temp.newtonToCelsius()
      else if convertFrom == 'Re'
        temp.reaumurToCelsius()
      else if convertFrom == 'Ro'
        temp.romerToCelsius()
      else
        res.send "Can't convert that temperature scale! \nAvailable :thermometer: - C, F, K, R, D, N, Re, Ro"
        return
      
      if convertTo == 'C' # Do nothing
      else if convertTo == 'F'
        temp.celsiusToFahrenheit()
      else if convertTo == 'K'
        temp.celsiusToKelvin()
      else if convertTo == 'R'
        temp.celsiusToRankine()
      else if convertTo == 'D'
        temp.celsiusToDelisle()
      else if convertTo == 'N'
        temp.celsuisToNewton()
      else if convertTo == 'Re'
        temp.celsiusToReaumur()
      else if convertTo == 'Ro'
        temp.celsiusToRomer()
      else
        res.send "Can't convert that temperature scale! \nAvailable :thermometer: - C, F, K, R, D, N, Re, Ro"
        return
          
      res.send "#{tempValue.toFixed(2)} degrees #{convertFrom} = #{temp.tempValue.toFixed(2)} degrees #{convertTo}"