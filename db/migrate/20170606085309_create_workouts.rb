class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :goal
      t.text :feeling
      t.float :total_time
      t.text :item
      t.integer :set
      t.integer :rep_time

      t.timestamps null: false
    end
  end
end
