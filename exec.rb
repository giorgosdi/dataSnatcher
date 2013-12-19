require './DataSnatcher'

@snatcher = DataSnatcher.new

while true
  @snatcher.scrapHumidity("http://www.accuweather.com/en/gr/thessaloniki/186405/current-weather/186405")
  @snatcher.write_in_file("humidity.txt")
  sleep 1
end

