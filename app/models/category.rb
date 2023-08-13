class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses

  validates :name, presence: true, length: { in: 2..50 }
  validates :icon, presence: true
end
