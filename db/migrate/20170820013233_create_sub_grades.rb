class CreateSubGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_grades do |t|
      t.decimal :grade_one, null: false
      t.decimal :grade_two, null: false
      t.decimal :grade_three, null: false
      t.decimal :grade_four, null: false
      t.decimal :grade_five, null: false
      t.decimal :grade_six, null: false
      t.decimal :grade_seven, null: false
      t.decimal :grade_eight, null: false
      t.decimal :grade_nine, null: false
      t.references :grade, foreign_key: true

      t.timestamps
    end
  end
end
