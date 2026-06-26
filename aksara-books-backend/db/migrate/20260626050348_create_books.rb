class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.integer :original_price
      t.references :category, null: false, foreign_key: true
      t.string :cover
      t.float :rating
      t.integer :reviews
      t.text :description
      t.integer :pages
      t.string :publisher
      t.integer :year
      t.string :isbn
      t.integer :stock
      t.string :badge

      t.timestamps
    end
  end
end
