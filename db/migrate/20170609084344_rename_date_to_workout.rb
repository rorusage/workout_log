class RenameDateToWorkout < ActiveRecord::Migration
  def change
    rename_column :workouts, :date, :workout_date
  end
end
