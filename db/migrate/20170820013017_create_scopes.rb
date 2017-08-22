class CreateScopes < ActiveRecord::Migration[5.1]
  def change
    create_table :scopes do |t|
      t.string :name, unique: true, null: false
      t.text :description, default: "", null: false
      t.boolean :passed, null: false, default: true
      t.references :semester_student_subject, foreign_key: true

      t.timestamps
    end
  end
end
