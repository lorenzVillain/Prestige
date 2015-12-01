class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :brand
      t.string :user_id
      t.string :picture_path
      t.string :category
      t.integer :price
      t.string :gender

      t.timestamps null: false
    end
  end
end
