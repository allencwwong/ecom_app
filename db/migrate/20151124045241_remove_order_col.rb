class RemoveOrderCol < ActiveRecord::Migration
  def change
    remove_column :orders, :Order, :integer
  end
end
