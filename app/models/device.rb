class Device < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates_uniqueness_of :name, case_sensitive: false
end
