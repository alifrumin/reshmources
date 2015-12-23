class Topic < ActiveRecord::Base
  has_many :categories
  has_many :resources, through: :categories
  validates :name, presence: true, uniqueness: true
end
