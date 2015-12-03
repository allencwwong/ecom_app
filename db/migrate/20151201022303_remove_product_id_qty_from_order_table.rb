class RemoveProductIdQtyFromOrderTable < ActiveRecord::Migration
  def change
    remove_column :orders, :product_id, :integer
    remove_column :orders, :qty, :integer
  end
end
