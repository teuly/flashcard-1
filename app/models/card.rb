class Card < ActiveRecord::Base
	validates :translated_text,	:original_text, presence: true
	#validates :review_date, presence: true
    validates :translated_text,	:original_text, confirmation: false
end

