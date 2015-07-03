class AddUserIdToDevfiles < ActiveRecord::Migration
  def up
    add_column :devfiles, :user_id, :integer
  end
  
  def down
    remove_column :devfiles, :user_id
  end
end
