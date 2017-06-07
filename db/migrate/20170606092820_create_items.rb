class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.integer :set
      t.integer :rep_time

      t.timestamps null: false
    end
  end
end
