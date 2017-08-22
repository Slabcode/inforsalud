class CreateSemesterStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :semester_students do |t|
      t.string :year, null: false, default: Date.today.year
      t.integer :period, null: false, default: 1
      t.boolean :passed, null: false, default: false
      t.boolean :payment, null: false, default: false
      t.references :carrer_student, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
    add_index :semester_students, [:year,:period,:carrer_student_id,:semester_id], unique: true, :name => 'my_index_2'
  end
end
