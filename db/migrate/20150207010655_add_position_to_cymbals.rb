class AddPositionToCymbals < ActiveRecord::Migration
  def change
    add_column :cymbals, :position, :integer
  end
end
