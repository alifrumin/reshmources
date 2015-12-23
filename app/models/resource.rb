class Resource < ActiveRecord::Base
  has_many :categories
  has_many :topics, through: :categories
  validates :name, presence: true, uniqueness: true
end
