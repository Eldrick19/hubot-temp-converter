# hubot-temp-converter - <img src="img/hubot.png" width=30> + <img src="img/thermometer.png" width=20>
A hubot script that converts the following temperature to and from eachother:

- Celsius (C) 
- Fahrenheit (F)
- Rankine (R)
- Delisle (D)
- Newton <sub> the temp version not the other one </sub> (N)
- Réaumur (Re)
- Rømer (Ro)

I got the temperature conversions from Wikipedia: https://en.wikipedia.org/wiki/Conversion_of_scales_of_temperature

## Installation

In your hubot repo run the following script:

````
yarn add hubot-temp-converter --save
````

And add this script to your `external-scripts.json`

````
[
  "hubot-temp-converter"
]
````

That's it! No additional setup required.

