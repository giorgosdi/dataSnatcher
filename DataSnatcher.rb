require 'nokogiri'   
require 'open-uri'


class DataSnatcher

  def getUrl(url)
    page = url
    @doc = Nokogiri::HTML(open(page))
  end

  def scrapHumidity(url)
    getUrl(url)
    @humidity =  @doc.css('.stats')  
    @num = @humidity.css('strong')[0].text
    @num = @num.slice(/\d+/)
  end

  def write_in_file(filename)
    file = File.open(filename,"a")
      file.puts(@num)
      puts @num
      file.close
  end

end