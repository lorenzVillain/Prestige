class RemovePassLogEmailColumsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :login_id
    remove_column :users, :password
    remove_column :users, :email_address
  end
end
