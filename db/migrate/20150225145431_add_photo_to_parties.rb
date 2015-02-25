class AddPhotoToParties < ActiveRecord::Migration
  def change
    add_column :parties, :photo, :string
  end
end
