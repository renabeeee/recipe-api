class Ingredient < ApplicationRecord
  has_many :pantry_items
  has_many :users, through: :pantry_items
  has_and_belongs_to_many :recipes

  validates :name, presence: true
end
