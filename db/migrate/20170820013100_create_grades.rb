class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.decimal :grade_one, null: false
      t.decimal :grade_two, null: false
      t.decimal :grade_three, null: false
      t.references :semester_student_subject, foreign_key: true

      t.timestamps
    end
  end
end
