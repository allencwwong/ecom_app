class AddTaxAddSubTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :tax, :integer
    add_column :orders, :subtotal, :integer
  end
end
