class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :category
      t.string :title
      t.text :review
      t.integer :sku
      t.text :author

      t.timestamps
    end
  end
end
