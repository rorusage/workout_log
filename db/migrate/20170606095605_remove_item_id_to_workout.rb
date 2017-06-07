class RemoveItemIdToWorkout < ActiveRecord::Migration
  def change
    remove_column :workouts, :item_id
  end
end
