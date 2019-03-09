
module MoviesHelper

  def youtube_frame(url)
    content_tag(:iframe, '', src: url, width: "560", height: "315", frameborder: "0")
  end

  def imdb_scrape(url)
    require 'open-uri'
    require 'nokogiri'

    doc = Nokogiri::HTML(open(url))
    puts
    doc.at_css(".summary_text").to_s
    doc.at_css(".summary_text").each do |url|
    puts "#{doc}"
    end
  end

end
