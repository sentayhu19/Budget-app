class CategoriesTransaction1 < ApplicationRecord
  belongs_to :category
  belongs_to :transactions1, class_name: 'transactions1s'
end
