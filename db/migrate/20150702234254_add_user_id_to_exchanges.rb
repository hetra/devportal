class AddUserIdToExchanges < ActiveRecord::Migration
  def up
    add_column :exchanges, :user_id, :integer
  end
  
  def down
    remove_column :exchanges, :user_id
  end
end
