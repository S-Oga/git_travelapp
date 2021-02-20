class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.string :destination
      t.integer :budget
      t.integer :start_date
      t.integer :finish_date
      t.integer :duration
      t.timestamps
    end
  end
end
