class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email,:strings
  end
end
