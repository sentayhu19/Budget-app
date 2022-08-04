class Category < ApplicationRecord
  belongs_to :user
  has_many :category_transactions1s, dependent: :destroy
  has_many :transactions1s, through: :category_transactions1s
  validates :name, presence: true
end
