class CreateNoteCategories < ActiveRecord::Migration
  def change
    create_table :note_categories do |t|
      t.string :name
      t.string :cover
      t.integer :user_id

      t.timestamps
    end
  end
end
