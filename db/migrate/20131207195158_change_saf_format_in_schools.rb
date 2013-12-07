class ChangeSafFormatInSchools < ActiveRecord::Migration
def self.up
   change_column :schools, :saf, :string
  end

  def self.down
   change_column :schools, :saf, :integer
  end
end
