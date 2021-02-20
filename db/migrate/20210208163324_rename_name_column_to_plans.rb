class RenameNameColumnToPlans < ActiveRecord::Migration[5.2]
  def change
    rename_column :plans, :name, :planname
  end
end
