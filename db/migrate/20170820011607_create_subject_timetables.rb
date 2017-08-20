class CreateSubjectTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_timetables do |t|
      t.string :year, null: false, default: Date.today.year 
      t.integer :period, null: false, default: 0
      t.references :subject, foreign_key: true
      t.references :timetable, foreign_key: true

      t.timestamps
    end
  end
end
