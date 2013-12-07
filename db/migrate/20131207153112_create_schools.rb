class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :wiki
      t.boolean :private
      t.integer :students
      t.integer :saf
      t.integer :budget
      t.string :sga_website
      t.string :sga_facebook
      t.string :sga_twitter
      t.string :newspaper
      t.integer :competitor_id
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
