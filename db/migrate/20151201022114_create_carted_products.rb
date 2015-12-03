class CreateCartedProducts < ActiveRecord::Migration
  def change
    create_table :carted_products do |t|
      t.string :user_id
      t.integer :product_id
      t.integer :qty
      t.string :status

      t.timestamps null: false
    end
  end
end
