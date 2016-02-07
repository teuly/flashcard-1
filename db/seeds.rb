<<<<<<< HEAD
require 'open-uri'
require 'nokogiri'

Card.delete_all
data = Nokogiri::HTML(open("http://www.languagedaily.com/learn-german/vocabulary/common-german-words"))
cards = data.css(".article")

cards.css(".rowB", ".rowA").each do |card|
translated_text = card.css('.bigLetter').text
original_text = card.css('td[3]').text
card = Card.create!(:original_text  => original_text, :translated_text => translated_text, :review_date => Date.today )
end

=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
>>>>>>> af522a6195add78cf4cecd2d5b6337d5ebb0a3c1
