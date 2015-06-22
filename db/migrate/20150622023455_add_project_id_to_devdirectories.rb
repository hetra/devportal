class AddProjectIdToDevdirectories < ActiveRecord::Migration
  def self.up
    add_column :devdirectories, :project_id, :integer
  end

  def self.down
    remove_column :devdirectories, :project_id
  end
end