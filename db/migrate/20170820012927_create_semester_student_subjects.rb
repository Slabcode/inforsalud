class CreateSemesterStudentSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :semester_student_subjects do |t|
      t.references :professor_subject, foreign_key: true
      t.references :semester_student, foreign_key: true
      t.boolean :poll, default: false

      t.timestamps
    end
    add_index :semester_student_subjects, [:professor_subject_id,:semester_student_id], unique: true, :name => 'my_index_5'
  end
end
