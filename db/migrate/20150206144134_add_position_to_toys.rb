class AddPositionToToys < ActiveRecord::Migration
  def change
    add_column :toys, :position, :integer
  end
end
