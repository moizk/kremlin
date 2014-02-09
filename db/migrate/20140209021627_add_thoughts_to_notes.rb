class AddThoughtsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :thought, :text
  end
end
