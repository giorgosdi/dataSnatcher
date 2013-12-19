require 'nokogiri'   
require 'open-uri'


class DataSnatcher

  def getUrl(url)
    page = url
    @doc = Nokogiri::HTML(open(page))
  end

  def scrapHumidity(url)
    getUrl(url)
    humidity =  @doc.css('.stats')  
    puts humidity.css('strong')[0].text
  end

end