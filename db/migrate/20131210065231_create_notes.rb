class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :url
      t.integer :user_id
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
  end
end
