class AddCustomerToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :customer, :boolean, :default => false
  end
end
