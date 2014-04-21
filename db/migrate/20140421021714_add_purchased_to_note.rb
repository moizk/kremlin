class AddPurchasedToNote < ActiveRecord::Migration
  def change
    add_column :notes, :purchased, :boolean, :default => false
  end
end
