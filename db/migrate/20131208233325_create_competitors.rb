class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name
      t.string :website
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end
end
