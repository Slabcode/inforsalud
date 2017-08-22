class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.integer :start_time, null: false
      t.integer :end_time, null: false
      t.references :working_day, foreign_key: true

      t.timestamps
    end
  end
end
