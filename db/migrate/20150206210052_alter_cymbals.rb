class AlterCymbals < ActiveRecord::Migration
  def up
  	rename_column("cymbals", "type", "CymbalType")
  end
  def down
  	rename_column("cymbals","CymbalType","type")
  end
end
