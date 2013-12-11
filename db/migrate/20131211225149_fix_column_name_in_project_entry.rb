class FixColumnNameInProjectEntry < ActiveRecord::Migration
def change
    rename_column :project_entries, :end, :finish
  end
end
