class Category < ApplicationRecord
  has_many :devices

  validates :name, presence: true
end
