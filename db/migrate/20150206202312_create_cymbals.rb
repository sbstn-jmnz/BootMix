class CreateCymbals < ActiveRecord::Migration
  def change
    create_table :cymbals do |t|
      t.string :type
      t.string :family
      t.integer :inches
      t.string :name

      t.timestamps null: false
    end
  end
end
