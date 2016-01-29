class Card < ActiveRecord::Base	
  validates :review_date,  presence: true
  validates :original_text, presence: true
  VALID_REGEX = /\A[a-z]+\z/
  validates :original_text, :translated_text, format: { with:  VALID_REGEX } 
  validates :translated_text, presence: true, 
  exclusion: { in: :original_text, message: "translated_text = original_text" }
end


