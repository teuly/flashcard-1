class Card < ActiveRecord::Base	
  validates :review_date, :original_text, presence: true	   
  validates :translated_text, presence: true, 
  exclusion: { in: :original_text, message: "translated_text = original_text" }
end


