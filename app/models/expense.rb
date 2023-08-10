class Expense < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  attribute :amount, default: 0

  validates :name, presence: true, length: { in: 2..50 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
