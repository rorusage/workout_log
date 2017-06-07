class AddItemIdToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :item_id, :integer
  end
end
