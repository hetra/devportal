class AddQuantityAndStockIdToPortfolios < ActiveRecord::Migration
  def up
    add_column :portfolios, :quantity, :integer
    add_column :portfolios, :stock_id, :integer
  end
  
  def down
    remove_column :portfolios, :quantity
    remove_column :portfolios, :stock_id
  end
end
