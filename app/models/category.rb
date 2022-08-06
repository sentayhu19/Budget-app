class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  has_many :category_transactions1s, dependent: :delete_all
  has_many :transactions1s, through: :category_transactions1s
  validates :name, presence: true
  def amount
    0
  end
end
