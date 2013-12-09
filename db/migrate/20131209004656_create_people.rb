class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :linkedin
      t.string :facebook
      t.string :twitter
      t.string :title
      t.integer :school_id

      t.timestamps
    end
  end
end
