class CreateCategoriesEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :categories_entries do |t|
      t.references :entry, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      # t.timestamps
    end
  end
end
