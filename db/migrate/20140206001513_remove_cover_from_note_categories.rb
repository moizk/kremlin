class RemoveCoverFromNoteCategories < ActiveRecord::Migration
  def up
    remove_column :note_categories, :cover
  end

  def down
    add_column :note_categories, :cover, :string
  end
end
