class AddExchangeIdToStocks < ActiveRecord::Migration
  def up
    add_column :stocks, :exchange_id, :integer
  end
  
  def down
    remove_column :stocks, :exchange_id
  end
end
