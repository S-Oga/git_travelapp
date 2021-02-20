class RenameBudgetColumnToTravels < ActiveRecord::Migration[5.2]
  def change
    rename_column :travels, :budget, :budget_id
    rename_column :travels, :destination, :destination_id
  end
end
