class Category < ApplicationRecord
  belongs_to :User
  has_many :category_transactions1s, dependent: :destroy
  has_many :transacs, through: :category_transactions1s
  validates :name, presence: true
end
