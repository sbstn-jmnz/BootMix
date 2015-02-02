class AddDeletedAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :deleted_at, :datetime, :null => false
    add_index :users, :deleted_at
  end
end
