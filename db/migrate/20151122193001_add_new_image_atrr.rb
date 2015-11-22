class AddNewImageAtrr < ActiveRecord::Migration
  def change
    add_column :images, :image_url, :text
  end
end
