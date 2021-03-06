class Place < ApplicationRecord
  validates :description, presence: true 
  validates :address, presence: true
  validates :name, presence: true, length: {minimum: 3} 
 
  belongs_to :user
  has_many :comments
  has_many :photos

  
  geocoded_by :address
  after_validation :geocode


  validates :name, presence: true
end
