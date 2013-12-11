class AddHourlyToProject < ActiveRecord::Migration
  def change
    add_column :projects, :hourly, :decimal
  end
end
