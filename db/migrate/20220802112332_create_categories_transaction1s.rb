class CreateCategoriesTransaction1s < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_transaction1s do |t|
      t.references :transactions1, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
