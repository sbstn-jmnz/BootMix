class AddDeletedAtToGroupUsers < ActiveRecord::Migration
  def change
    add_column :group_users, :deleted_at, :datetime, :null => false
    add_index :group_users, :deleted_at
  end
end
