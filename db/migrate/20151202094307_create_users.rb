class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :login_id
      t.integer :password
      t.string :email_address
      t.string :first_name
      t.string :city
      t.string :country
      t.integer :renter_number_ratings
      t.integer :renter_total_rating
      t.integer :owner_number_rating
      t.integer :owner_total_rating

      t.timestamps null: false
    end
  end
end
