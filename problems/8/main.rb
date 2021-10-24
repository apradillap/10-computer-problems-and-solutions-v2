require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document

url = 'https://twitter.com/nebrija'
doc = Nokogiri::HTML(open(URI.encode(url)))

title = doc.xpath("//a[@class='ProfileHeaderCard-nameLink u-textInheritColor js-nav']").text

puts title

tweets = doc.xpath("//span[@class='ProfileNav-value']").text

puts tweets
