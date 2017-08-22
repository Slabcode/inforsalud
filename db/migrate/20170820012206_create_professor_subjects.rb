class CreateProfessorSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :professor_subjects do |t|
      t.integer :quantity, null: false
      t.references :subject_timetable, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
