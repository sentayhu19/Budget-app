class Transactions1 < ApplicationRecord
  belongs_to :User
  has_many :category_transacs, dependent: :destroy
  has_many :categories, through: :category_transactions1s
  validates :amount, presence: true
  validates :name, presence: true
end
