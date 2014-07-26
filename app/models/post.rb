class Post < ActiveRecord::Base

	# Associations
  belongs_to :user

  # Validations
  validates :body, presence: true
  validates :title, presence: true
  
end
