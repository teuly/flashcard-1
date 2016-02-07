class Card < ActiveRecord::Base	
validates :review_date,  presence: true
validates :original_text, presence: true
validates :translated_text, presence: true 
validate :not_equal

before_create do |card|
  card.translated_text = card.translated_text.downcase
  card.original_text = card.original_text.downcase
end
#VALID_REGEX = /\A[a-z]+\z/
#validates :original_text, :translated_text, format: { with:  VALID_REGEX } 

def not_equal
errors.add(:base, 'translated_text and original_text cannot be equal.') if translated_text == original_text
end
end