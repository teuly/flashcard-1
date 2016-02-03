# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'
require 'nokogiri'
data = Nokogiri::HTML(open("http://www.languagedaily.com/learn-german/vocabulary/common-german-words"))
cards = data.css(".article")

cards.xpath('//tbody//tr').each do |card|
	original_text = card.css('.bigLetter').text
	translated_text = card.css('td[3]')
	puts "original_text", original_text
    puts "translated text", translated_text.text
end