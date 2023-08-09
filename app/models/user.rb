class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :transactios, dependent: :destroy

  validates :name, presence: true, length: { in: 2..50 }
end
