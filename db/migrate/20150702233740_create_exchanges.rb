class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :name
      t.string :ticker
      t.text :description
      t.time :open_time
      t.time :close_time
      t.string :headquarters
      t.string :country

      t.timestamps null: false
    end
  end
end
