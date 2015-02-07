class AddSoundToCymbal < ActiveRecord::Migration
  def change
    add_column :cymbals, :sound, :string
  end
end
