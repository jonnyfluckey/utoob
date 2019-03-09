require 'open-uri'
require 'nokogiri'
require 'json'
module MoviesHelper

  def youtube_frame(url)
    content_tag(:iframe, '', src: url, width: "560", height: "315", frameborder: "0")
  end


  def imdb_scrape(url)
    # url = "http://www.imdb.com/title"
    description = Nokogiri::HTML(open(url))

    puts description.at_css("div.summary_text").text


  end

end
