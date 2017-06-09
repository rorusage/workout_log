class AddDateToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :date, :Datetime
  end
end
