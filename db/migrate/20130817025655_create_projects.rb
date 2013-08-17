class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :website
      t.string :git_repo
      t.string :color
      t.integer :user_id

      t.timestamps
    end
  end
end
