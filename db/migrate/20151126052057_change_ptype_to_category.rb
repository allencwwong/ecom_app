class ChangePtypeToCategory < ActiveRecord::Migration
  def change
    rename_column :products, :p_type , :category
  end
end
