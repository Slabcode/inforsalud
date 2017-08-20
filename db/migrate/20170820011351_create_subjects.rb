class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name, null: false, unique: true
      t.string :code, null: false, unique: true
      t.text :description, null: false, default: ""
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
