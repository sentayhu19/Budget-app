class Transactions1 < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  has_many :category_transactions1s, dependent: :delete_all
  has_many :categories, through: :category_transactions1s
  validates :amount, presence: true
  validates :name, presence: true
end
