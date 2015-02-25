class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
