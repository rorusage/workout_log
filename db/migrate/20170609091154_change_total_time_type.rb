class ChangeTotalTimeType < ActiveRecord::Migration
  def change
    change_column :workouts, :total_time, :string
  end
end
