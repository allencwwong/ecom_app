class AddTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :Order, :string
    add_column :orders, :total, :integer
  end
end
