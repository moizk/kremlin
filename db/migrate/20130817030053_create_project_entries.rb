class CreateProjectEntries < ActiveRecord::Migration
  def change
    create_table :project_entries do |t|
      t.integer :project_id
      t.text :comment
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
