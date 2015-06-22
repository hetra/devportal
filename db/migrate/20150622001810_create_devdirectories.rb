class CreateDevdirectories < ActiveRecord::Migration
  def change
    create_table :devdirectories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
