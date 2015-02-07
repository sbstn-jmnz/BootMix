class AddImageToCymbal < ActiveRecord::Migration
  def change
    add_column :cymbals, :image, :string
  end
end
