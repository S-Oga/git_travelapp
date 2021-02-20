class ChangeDataStartDateToTravels < ActiveRecord::Migration[5.2]
  def change
    change_column :travels, :start_date, :date
    change_column :travels, :finish_date, :date
  end
end
