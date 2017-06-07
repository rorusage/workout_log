class AddWorkoutIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :workout_id, :integer
  end
end
