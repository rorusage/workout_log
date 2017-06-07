class RemoveWorkoutColumn < ActiveRecord::Migration
  def change
    remove_column :workouts, :item
    remove_column :workouts, :set
    remove_column :workouts, :rep_time
  end
end
