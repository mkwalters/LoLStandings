
require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open("http://www.gosugamers.net/lol/rankings"))


for i in 1...100
	puts doc.css("span span")[i].text
end
