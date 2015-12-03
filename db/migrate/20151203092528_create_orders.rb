class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :renter_id
      t.integer :owner_id
      t.string :integer
      t.integer :product_id
      t.integer :rent_cost
      t.integer :freight_cost
      t.integer :order_generation_date
      t.integer :submission_date
      t.datetime :delivery_date
      t.datetime :return_date
      t.integer :finalreception_date
      t.string :origin_city
      t.string :origin_country
      t.string :destination_city
      t.string :destination_country

      t.timestamps null: false
    end
  end
end
