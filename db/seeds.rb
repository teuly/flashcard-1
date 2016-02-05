require 'open-uri'
require 'nokogiri'
Card.delete_all
data = Nokogiri::HTML(open("http://www.languagedaily.com/learn-german/vocabulary/common-german-words"))
cards = data.css(".article")
cards.xpath('//tbody/tr').each do |card|
translated_text = card.css('td[2]').text # td[2] => '.bigLettr'
original_text = card.xpath('td[3]').text
card = Card.create!(:original_text  => original_text, :translated_text => translated_text, :review_date => Date.today )
end
