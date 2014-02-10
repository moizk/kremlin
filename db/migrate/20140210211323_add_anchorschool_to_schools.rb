class AddAnchorschoolToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :anchor_school, :boolean, :default => false
  end
end
