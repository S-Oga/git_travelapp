class ChangeDatatypeCategoryIdOfPlans < ActiveRecord::Migration[5.2]
  def change
    change_column :plans, :category_id, :text
  end
end
