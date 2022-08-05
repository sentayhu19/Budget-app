class Category < ApplicationRecord
  belongs_to :user
  has_many :category_transactions1s, dependent: :delete_all
  has_many :transactions1s, through: :category_transactions1s
  validates :name, presence: true

  def amount
    result = 0
    transactions1s.each { |_transac| result += transactions1.amount }
    result
  end
end
