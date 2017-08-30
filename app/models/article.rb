class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }         # maakt dat de velden niet leeg mogen zijn, én min 3, max 50
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }  # maakt dat de velden niet leeg mogen zijn, én min 10, max 500
  
end