class Card < ActiveRecord::Base	
validates :review_date,  presence: true
validates :original_text, presence: true
VALID_REGEX = /\A[a-z]+\z/
validates :original_text, :translated_text, format: { with:  VALID_REGEX } 
validates :translated_text, presence: true 

validate :text_fields_are_not_equal

 def text_fields_are_not_equal
   self.errors.add(:base, 'translated_text and original_text cannot be equal.') if self.translated_text == self.original_text
 end

end