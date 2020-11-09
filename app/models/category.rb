class Category < ApplicationRecord
  has_many :devices

  validates :name, presence: true
  validates_uniqueness_of :name, case_sensitive: false
end
