class CreateDevfiles < ActiveRecord::Migration
  def change
    create_table :devfiles do |t|
      t.string :name
      t.string :extension
      t.text :contents

      t.timestamps null: false
    end
  end
end
