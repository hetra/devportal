class AddDevdirectoryIdToDevfiles < ActiveRecord::Migration
  def self.up
    add_column :devfiles, :devdirectory_id, :integer
  end

  def self.down
    remove_column :devfiles, :devdirectory_id
  end
end