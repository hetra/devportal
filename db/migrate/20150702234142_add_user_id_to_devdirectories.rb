class AddUserIdToDevdirectories < ActiveRecord::Migration
  def up
    add_column :devdirectories, :user_id, :integer
  end
  
  def down
    remove_column :devdirectories, :user_id
  end
end
