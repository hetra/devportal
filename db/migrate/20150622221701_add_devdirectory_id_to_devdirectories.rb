class AddDevdirectoryIdToDevdirectories < ActiveRecord::Migration
  def self.up
    add_column :devdirectories, :devdirectory_id, :integer
  end

  def self.down
    remove_column :devdirectories, :devdirectory_id
  end
end
