class AddCategoryToWorkingTimes < ActiveRecord::Migration[6.1]
  def change
    add_index :categories, :title, unique: true
    add_reference :working_times, :category
  end
end
