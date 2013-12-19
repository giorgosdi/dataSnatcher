require './DataSnatcher'

@snatcher = DataSnatcher.new

while true
  @snatcher.scrapHumidity("http://www.accuweather.com/en/gr/thessaloniki/186405/current-weather/186405")
  sleep 600
end

