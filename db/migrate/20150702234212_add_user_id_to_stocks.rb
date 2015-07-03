class AddUserIdToStocks < ActiveRecord::Migration
  def up
    add_column :stocks, :user_id, :integer
  end
  
  def down
    remove_column :stocks, :user_id
  end
end
