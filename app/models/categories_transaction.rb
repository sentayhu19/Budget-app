class CategoriesTransaction < ApplicationRecord
  belongs_to :transactions
  belongs_to :categories
end
