class CreateAttendenceSemesterStudentSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :attendence_semester_student_subjects do |t|
      t.references :attendece, foreign_key: true
      t.references :semester_student_subject, foreign_key: true, index: {name: 'index_20'}

      t.timestamps
    end
    add_index :attendence_semester_student_subjects, [:attendece_id,:semester_student_subject_id], unique: true, name: 'attendance_index'
  end
end
