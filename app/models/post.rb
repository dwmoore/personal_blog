class Post < ActiveRecord::Base

	# Friendly ID
  extend FriendlyId
  friendly_id :title, use: :slugged

	# Associations
  belongs_to :user

  # Validations
  validates :body, presence: true
  validates :title, presence: true


  
end
