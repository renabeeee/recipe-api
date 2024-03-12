class User < ApplicationRecord
  has_many :pantry_items
  has_many :ingredients, through: :pantry_items

  # validates :first_name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true

  has_secure_password

end
