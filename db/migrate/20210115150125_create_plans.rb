class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :travel_id
      t.string :name
      t.integer :category_id
      t.datetime :from
      t.datetime :to
      t.timestamps
    end
  end
end
